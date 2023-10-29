# Diretório
setwd("C:/Users/user/Documents/Projetos - Análise de Dados/Análise de vazões Q90 e Q95")

# Manipulação de dados

install.packages('readr')
library(readr)

# Importação de dados
dados <- read_delim("58874000_vazoes.csv", 
                               delim = ";", escape_double = FALSE, col_types = cols(Data = col_date(format = "%m/%Y")), 
                               trim_ws = TRUE)
View(dados)

# Selecionado colunas
install.packages('tidyverse')
library(tidyverse)

dados1 <- dados %>% select(, c(1,3,16:46))
View(dados1)


## Unir vazões em uma única coluna

dados2 <- dados1 %>% pivot_longer(cols = 3:33,values_to = 'Vazão')
View(dados2)

## Criando colunas Mês e Ano

dados2 <- dados2 %>% mutate(Mês = month(Data),
                            Ano = year(Data))

## Criando Coluna Dia
View(dados2)
dados2$Dia <- rep(seq(1,31), length.out = nrow(dados2))

## Criando nova coluna Data
str(dados2)

dados2 <- dados2 %>%
  mutate( Data = paste(Dia, Mês, Ano, sep = '/')) 
  
### Vericando classe das colunas
str(dados2)

### Transformando Data na classe Date e removendo coluna name


dados2$Data <- as.Date(dados2$Data, format = "%d/%m/%Y")

dados2 <- dados2[,-3]

# Verificando NAs

dados2 %>% filter(is.na(Vazão))

## Os NAs estão presentes em Datas que não existem. 
# Portanto, iremos remover todos os NAs

dados2 <- dados2 %>% drop_na()


# Período histórico da série
range(dados2$Data)

## Iremos selecionar a Data entre 1940-01-01 e 2022-11-30
### OBS: Na base de dados analisada, não há registros para o mes de 12 de 2022

dados3 <- dados2 %>% filter(Data >= "1940-01-01" & Data < "2023-01-01")
View(dados3)
str(dados3)

# Exportando dados

dados_vazao <- write.csv(dados3, file = 'dados_vazao.csv',
                         sep = ';',
                         dec = ',') 

#---------------------------------------------------------------
