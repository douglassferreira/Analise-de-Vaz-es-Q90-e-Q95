# Análise das Vazões de Referência Q90 e Q95
Análise das vazões de referências Q90 e Q95 no Rio Dois Rio em São Fidélis - RJ.
![Alt text](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Rio-Dois-Rios-em-Sao-Fidelis-1.jpg)

## 1. Introdução
O objetivo desse projeto consiste em analisar as vazões de referência Q90 e Q95 no Rio Dois Rios em São Fidélis - RJ. Para tanto, foram utilizados dados diários de vazão da estação fluviométrica código 58874000 localizada no município de São Fidélis - RJ. A série temporal analisada compreendeu um período de 83 anos (1940-2022), sendo obtida através da Agência Nacional de Águas e Saneamento Básico (ANA).

Vale ressaltar, que os resultados aqui apresentados fazem parte de um artigo publicado nos anais do 20° Congresso Nacional de Meio Ambiente realizado no município de Poços de Caldas - MG no ano de 2023, cujos os autores são Douglas da Silva Ferreira e Eliane Barbosa Santos. Ao final do projeto se encontra a referência do artigo mencionado.

## Metodologia
A aquisição dos dados de vazão da estação 58874000 em São Fideélis - RJ foi realizada pelo site da **ANA**, onde os dados foram baixados na extensão **txt**. Após o processamento e limpeza dos dados foi exportado um dataframe, também no formato txt, para sua posterior análise. Realizada esta etapa, foi feita então a análise dos dados de vazão por meio das vazões de referência Q90 e Q95.

As vazões de referências Q90 e Q95 são valores referentes aos percentis 90 e 95, respectivamente. Logo, esses fornecem informações a respeito das vazões presentes em um rio em 90% do tempo (Q90) e 95% do tempo (Q95). Tais informações são imprescindíveis para tomadas de decisões referentes ao uso da água de um rio ou outro recurso hídrico.   

O rio em estudo foi o Dois Rio, que é formado por dois importantes rios nas regiões norte e noroeste fluminense: os Rios Negro e Grande.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Bacia%20Dois%20Rios.png)

**Para este projeto o objetivo foi responder as seguintes perguntas:**
1. Nas décadas analisadas quais foram os meses que apresentaram os maiores e menores valores para as vazões Q90 e Q95?
1. As vazões análisadas sofreram influência de valores extremos?
1. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?

Para responder as perguntas acima foram adotados os seguintes métodos:

**1. Nas décadas analisadas quais foram os meses que apresentaram os maiores e menores valores para as vazões Q90 e Q95?**
- Para observação da sazonalidade nas décadas da série histórica, foi plotado um mapa de calor(heatmap) com as médias das vazões Q90 e Q95.
  
**2. As vazões análisadas sofreram influência de valores extremos?**
  - Para esta análise foram plotados dois gráficos de barras (para Q90 e Q95) com suas respectivas médias e medianas em cada década.

**3. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?**
  - Utilizou-se os mesmos gráficos de barras para responder esta pergunta. 

## Análise das vazões Q90 e Q95
**1. Sazonalidade - Q90 e Q95** 

Seguindo a metodologia descrita, foram plotados mapas de calor referentes as médias de Q90 e Q95 para observação da sazonalidade. 
![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_90.png)

A figura acima refere-se as médias mensais das vazões Q90 distribuídas por décadas. Observa-se que os meses de dezembro, janeiro e fevereiro apresentaram os maiores valores para Q90. Dentre esses meses, destaca-se janeiro com uma média superior a 200 m<sup>3</sup>/s na década de 2000(2000-09).  

Já os meses Julho e Agosto apresentaram as menores médias para a vazão de referência Q90. A figura abaixo apresenta o mapa de calor referente a vazão Q95. 

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_Q95.png)

Como pode ser observado, os meses com as maiores médias também foram dezembro, janeiro e fevereiro e os meses com menores médias novamente foram julho e agosto. 

Isso acontece devido ao fato da variação das vazões ao longo dos meses está intrinsecamente ligada às taxas de precipitação. Durante os meses de verão, especialmente dezembro, janeiro e fevereiro, observa-se uma maior quantidade de chuvas. Em contrapartida, nos meses de inverno, como junho, julho e agosto, a incidência de chuvas diminui. Essa dinâmica de precipitação influencia diretamente a vazão do rio.

**2. Valores Extremos**

Para verificar se a série temporal é influenciada por valores extremos, foram plotados gráficos de barras relacionando médias e medianas. As figuras abaixo mostram os resultados obtidos para Q90 e Q95 respectivamente. 
![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensal_Q90.png)

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensa_Q95.png)

Nos dois gráficos verifica-se uma forte discrepância entre as médias e medianas de Q90 e Q95 ao longo das décadas, o que sugere a existência de valores extremos na série histórica.  

**3. Mudanças nos padrões das vazões**

Para todo o período analisado, a década de 1980 se destacou tanto na análise de Q90 como em que Q95, com médias de 85,1 m³/s (Q90) e 106,0 m³/s (Q95) e medianas de 74,1 m³/s (Q90) e 105,0 m³/s (Q95).
Nas décadas amteriores a 1980 as medianas mostraram poucas alterações. No entanto, as médias apresentaram flutuações significativas, sugerindo que foram impactadas por vazões extremas.

