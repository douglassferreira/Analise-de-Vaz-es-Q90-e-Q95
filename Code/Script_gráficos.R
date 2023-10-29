
# Diretório
setwd("C:/Users/user/Documents/Projetos - Análise de Dados/Análise de vazões Q90 e Q95")

# Carregando pacote
library(tidyverse)
library(ggplot2)

# Importação de dados

dados <- read_csv("dados_vazao.csv")
View(dados)

head(dados)
tail(dados)
str(dados)

# Informações gerais sobre a vazão
summary(dados$Vazão, na.rm = T)

# Verificando os percentis da série histórica
quantile(dados$Vazão, probs = seq(0, 1, .01), na.rm = T)
quantile(dados$Vazão, probs = c(.90, .95), na.rm = T)
# Série histórica: q90 = 81.9350 e q95 = 114.0715


# install.packages("dplyr") 
library(dplyr)

### Análise por mês
Vazão.mes <-
  summarise(.data = group_by(dados, Mês),
            Q90 = quantile(Vazão, probs = .9, na.rm = T),
            Q95 = quantile(Vazão, probs = .95, na.rm = T))
Vazão.mes


### Análise por ano

Vazão.ano <-
  summarise(.data = group_by(dados, Ano),
            Q90 = quantile(Vazão, probs = .9, na.rm = T),
            Q95 = quantile(Vazão, probs = .95, na.rm = T))
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


# Agrupando dados por Mês e Década
DVazão.mes <- summarise(.data = group_by(dados, Mês, Décadas),
            Q90 = quantile(Vazão, probs = .9, na.rm = T),
            Q95 = quantile(Vazão, probs = .95, na.rm = T))
View(DVazão.mes)
str(DVazão.mes)
DVazão.mes$Mês <- as.factor(DVazão.mes$Mês)


# Mapa de Calor refernte a Q90
ggplot(DVazão.mes, aes(Décadas, Mês)) +
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
         strip.text = element_text(size = 12, face = "bold"))

# Mapa de Calor referente a Q95
ggplot(DVazão.mes, aes(Décadas, Mês)) +
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
         strip.text = element_text(size = 12, face = "bold"))

#----------------------------------------------------------------------------------
# Q90 GRAFICO (Barras e linhas)
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
    axis.title.x = element_text(size = 13),
    axis.title.y = element_text(size = 13),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.major.y = element_line(color = "#DDDDDD"),
    panel.grid.minor.x = element_blank(),
    legend.text = element_text(size = 12),
    legend.position = "top",
    legend.justification=c(1,1)) +
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
    axis.title.x = element_text(size = 13),
    axis.title.y = element_text(size = 13),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.major.y = element_line(color = "#DDDDDD"),
    panel.grid.minor.x = element_blank(),
    legend.text = element_text(size = 12),
    legend.position = "top",
    legend.justification=c(1,1)) +
  scale_fill_manual(NULL, values = c("darkseagreen3")) +
  scale_color_manual(NULL, values = c("red4")) +
  theme(axis.line = element_line(colour = "black"))+
  guides(fill = guide_legend(order = 2), color = guide_legend(order = 1))
g2

#-------------------------------------------------------------------------------------------


 


