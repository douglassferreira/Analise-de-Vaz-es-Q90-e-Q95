
# Carregando pacote
library(tidyverse)

# Importação de dados
dados <- read.table("VZ_4022_58874000.txt", header = TRUE)


head(dados)
tail(dados)
str(dados)

dados$Data <- as.Date(dados$Data, format="%Y-%m-%d")
View(dados)

summary(dados$Vazao, na.rm = T)

quantile(dados$Vazao, probs = seq(0, 1, .01), na.rm = T)
quantile(dados$Vazao, probs = c(.90, .95), na.rm = T)
# Série histórica: q90 = 81.9350 e q95 = 114.0715


# install.packages("dplyr") 
library(dplyr)

### Análise por mês
Vazão.mes <-
  summarise(.data = group_by(dados, Mes),
            Q90 = quantile(Vazao, probs = .9, na.rm = T),
            Q95 = quantile(Vazao, probs = .95, na.rm = T))
Vazão.mes

# Na escala mensal, foi verificado que os meses de janeiro, fevereiro, março e dezembro 
# possuem os maiores valores para q90 e q95, com destaque para o mês de janeiro onde q90 e q95
# possuem valores de 167 e 216, respectivamente. 

# Já os meses em que as duas vazões referências tiveram menor valor foram Agosto e Setembro.
# Em agosto, os valores de q90 e q95 foram, respectivamente,27.6 e 31.2. 
# Ja em setembro os valores respectivos foram 28.4 e 34.8.  

### Análise por ano

Vazão.ano <-
  summarise(.data = group_by(dados, Ano),
            Q90 = quantile(Vazao, probs = .9, na.rm = T),
            Q95 = quantile(Vazao, probs = .95, na.rm = T))
Vazão.ano
View(Vazão.ano)


### Análise por décadas

dados$Décadas <- 
  ifelse(dados$Ano < 1950, "1940-49",
         ifelse(dados$Ano < 1960, "1950-59",
                ifelse(dados$Ano < 1970, "1960-69",
                       ifelse(dados$Ano < 1980, "1970-79",
                              ifelse(dados$Ano < 1990, "1980-89",
                                     ifelse(dados$Ano < 2000,  "1990-99",
                                            ifelse(dados$Ano < 2010, "2000-09",
                                                   ifelse(dados$Ano < 2020, "2010-19", "2020-22"))))))))
View(dados)


DVazão.mes <- summarise(.data = group_by(dados, Mes, Décadas),
            Q90 = quantile(Vazao, probs = .9, na.rm = T),
            Q95 = quantile(Vazao, probs = .95, na.rm = T))
View(DVazão.mes)
str(DVazão.mes)
DVazão.mes$Mes <- as.factor(DVazão.mes$Mes)

ggplot(DVazão.mes, aes(Décadas, Mes)) +
  geom_tile(aes(fill = Q90)) + 
  geom_text(aes(label = round(Q90, 1)), size = 3) +
  scale_fill_gradient(low = "white", high = "darkslategray")+
  labs(x = "Décadas", y= "Meses", fill = expression("Q90 (m"^"3"*"/s)"))+
  theme_minimal()+
  theme( axis.text = element_text( size = 11),
         axis.text.x = element_text( size = 11, angle = 90),
         axis.title = element_text( size = 12),
         legend.title = element_text(size = 12),
         legend.text = element_text(size = 12),
         plot.margin = unit(c(1,0.8,0.2,0.2), "cm"),
         legend.position = "bottom",
         legend.justification=c(1,1),
         # The new stuff
         strip.text = element_text(size = 12, face = "bold"))

ggplot(DVazão.mes, aes(Décadas, Mes)) +
  geom_tile(aes(fill = Q95)) + 
  geom_text(aes(label = round(Q95, 1)), size = 3) +
  scale_fill_gradient(low = "white", high = "darkslategray")+
  labs(x = "Décadas", y= "Meses", fill = expression("Q95 (m"^"3"*"/s)"))+
  theme_minimal()+
  theme( axis.text = element_text( size = 11),
         axis.text.x = element_text( size = 11, , angle = 90),
         axis.title = element_text( size = 12),
         legend.title = element_text(size = 12),
         legend.text = element_text(size = 12),
         plot.margin = unit(c(1,0.8,0.2,0.2), "cm"),
         legend.position = "bottom",
         legend.justification=c(1,1),
         # The new stuff
         strip.text = element_text(size = 12, face = "bold"))

#----------------------------------------------------------------------------------
# Q90 GRAFICO 
library(ggplot2)
library(viridis)

Vq90 <- summarise(.data = group_by(DVazão.mes, Décadas),
                  Vm = mean(Q90, na.rm = T), 
                  Vmed = median(Q90, na.rm = T),
                  Vmin = min(Q90, na.rm = T),
                  Vmax = max(Q90, na.rm = T))
Vq90

Vq95 <- summarise(.data = group_by(DVazão.mes, Décadas),
                  Vm = mean(Q95, na.rm = T), 
                  Vmed = median(Q95, na.rm = T),
                  Vmin = min(Q95, na.rm = T),
                  Vmax = max(Q95, na.rm = T))
Vq95

#Q90 GRAFICO 

g1 <- ggplot(Vq90, aes(x = Décadas)) +
  geom_col(aes(y = Vmed, fill = "Mediana"), width = 0.6, alpha=0.6) +
  geom_point(aes(y = Vm, color="Média"), size=2) +
  geom_line(aes(y = Vm, color="Média"), size=1, group = 1)+
  geom_text(aes(label = round(Vmed, 1), y = round(Vmed, 1)), 
            vjust = -0.4, size = 3.5, color = "darkslategray") +
  geom_text(aes(label = round(Vm, 1), y = round(Vm, 1)), 
            color = "red4", vjust = -0.6, size = 3.5) +
  scale_y_continuous(limits = c(0, 100), expand = c(0, 0)) +
  labs(title = " ",
       x = "Décadas",
       y = expression("Vazão Mensal - Q90 (m"^"3"*"/s)")) +
  theme_minimal()+
  theme(
    # plot.title = element_text(size = 18, hjust = 0.5),
    axis.title.x = element_text(size = 13),
    axis.title.y = element_text(size = 13),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.major.y = element_line(color = "#DDDDDD"),
    panel.grid.minor.x = element_blank(),
    legend.text = element_text(size = 12),
    legend.position = "top",
    legend.justification=c(1,1)) +
  # coord_cartesian(ylim = c(0, 1300)) +
  scale_fill_manual(NULL, values = c("darkseagreen3")) +
  scale_color_manual(NULL, values = c("red4")) +
  theme(axis.line = element_line(colour = "black"))+
  guides(fill = guide_legend(order = 2), color = guide_legend(order = 1))
g1
#---------------------------------------------------------------------------------
 
#Q95 GRAFICO 

g2 <- ggplot(Vq95, aes(x = Décadas)) +
  geom_col(aes(y = Vmed, fill = "Mediana"), width = 0.6, alpha=0.6) +
  geom_point(aes(y = Vm, color="Média"), size=2) +
  geom_line(aes(y = Vm, color="Média"), size=1, group = 1)+
  geom_text(aes(label = round(Vmed, 1), y = round(Vmed, 1)), 
            vjust = -0.4, size = 3.5, color = "darkslategray") +
  geom_text(aes(label = round(Vm, 1), y = round(Vm, 1)), 
            color = "red4", vjust = -0.6, size = 3.5) +
  scale_y_continuous(limits = c(0, 130), expand = c(0, 0)) +
  labs(title = " ",
       x = "Décadas",
       y = expression("Vazão Mensal - Q95 (m"^"3"*"/s)")) +
  theme_minimal()+
  theme(
    # plot.title = element_text(size = 18, hjust = 0.5),
    axis.title.x = element_text(size = 13),
    axis.title.y = element_text(size = 13),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.major.y = element_line(color = "#DDDDDD"),
    panel.grid.minor.x = element_blank(),
    legend.text = element_text(size = 12),
    legend.position = "top",
    legend.justification=c(1,1)) +
  # coord_cartesian(ylim = c(0, 1300)) +
  scale_fill_manual(NULL, values = c("darkseagreen3")) +
  scale_color_manual(NULL, values = c("red4")) +
  theme(axis.line = element_line(colour = "black"))+
  guides(fill = guide_legend(order = 2), color = guide_legend(order = 1))
g2

#-------------------------------------------------------------------------------------------

# Gráfico curva de permanência

library(tidyverse)

# Remover linhas com valores ausentes na coluna "Vazao"
dados_Vz <- drop_na(dados, Vazao)

# Ordenar os dados de vazão em ordem decrescente
dados_Vz <- arrange(dados_Vz, desc(Vazao))

# Calcular a porcentagem acumulada para cada valor de vazão
dados_Vz <- mutate(dados_Vz, Porcentagem = cumsum(Vazao) / sum(Vazao) * 100)

# Plotar a curva de permanência de vazões
ggplot(dados_Vz, aes(x = Porcentagem, y = Vazao)) +
  geom_line(color = "steelblue", size = 1.2) +
  xlab("Percentagem do tempo em que a vazão é superada (%)") +
  ylab(expression("Vazões diárias (m"^"3"*"/s)")) +
  # ggtitle("Curva de Permanência de Vazões") +
  # labs(subtitle = "Dados de Vazão Mensal") +
  scale_x_continuous(breaks = seq(0, 100, 10)) +
  scale_y_continuous(breaks = seq(0, 1600, 200)) +
  theme_minimal() +
  theme(plot.title = element_text(size = 16, hjust = 0.5),
        plot.subtitle = element_text(size = 12, hjust = 0.5),
        axis.text = element_text(color = "black", size = 10),
        axis.title = element_text(color = "black", size = 12),
        legend.position = "none",
        panel.grid.major = element_line(color = "#DDDDDD"),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank())
#--------------------------------------------------------------------------


