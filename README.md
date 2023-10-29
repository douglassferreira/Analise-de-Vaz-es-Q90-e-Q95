# Analysis of Reference Flows Q90 and Q95
Analysis of the Q90 and Q95 reference flows in the Dois Rios River in São Fidélis - RJ.
![Alt text](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Rio-Dois-Rios-em-Sao-Fidelis-1.jpg)

## 1. Introduction
The objective of this project is to analyze the Q90 and Q95 reference flows in the Dois Rios River in São Fidélis - RJ. To do so, daily flow data from the river gauge station code 58874000 located in the municipality of São Fidélis - RJ were used. The time series analyzed spanned a period of 83 years (1940-2022), and was obtained through the National Water and Basic Sanitation Agency (ANA).

It is worth noting that the results presented here are part of an article published in the proceedings of the 20th National Environmental Congress held in the municipality of Poços de Caldas - MG in 2023, whose authors are Douglas da Silva Ferreira and Eliane Barbosa Santos. At the end of the project, the reference to the mentioned article can be found.

## 2. Methodology
The flow data acquisition from station 58874000 in São Fidélis - RJ was carried out through the [ANA](https://www.snirh.gov.br/hidroweb-mobile/mapa) website, where the data was downloaded in **csv** format.  After processing and cleaning the data, a dataframe was exported, also in csv format, for its subsequent analysis. Having completed this step, the flow data was then analyzed using the Q90 and Q95 reference flows.

As vazões de referências Q90 e Q95 são valores referentes aos percentis 90 e 95, respectivamente. Logo, esses fornecem informações a respeito das vazões presentes em um rio em 90% do tempo (Q90) e 95% do tempo (Q95). Tais informações são imprescindíveis para tomadas de decisões referentes ao uso da água de um rio ou outro recurso hídrico.   

O objeto da análise é o Rio Dois Rios, situado no município de São Fidélis, RJ. Ele é originado pela confluência de dois rios significativos para as regiões norte e noroeste fluminense: o Rio Negro e o Rio Grande. A imagem a seguir ilustra o Rio Dois Rios, seus afluentes, a localização do município de São Fidélis e a estação fluviométrica selecionada.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Bacia%20Dois%20Rios.png)

**Este projeto teve como principal objetivo responder as seguintes perguntas:**
1. Nas décadas analisadas quais foram os meses que apresentaram os maiores e menores valores para as vazões Q90 e Q95?
1. As vazões análisadas sofreram influência de valores extremos?
1. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?

Para responder as perguntas acima foram adotados os seguintes métodos:

**1. Nas décadas analisadas quais foram os meses que apresentaram os maiores e menores valores para as vazões Q90 e Q95?**
- Para observação da sazonalidade nas décadas da série histórica, foram plotados mapas de calor(heatmap) com as médias das vazões Q90 e Q95.
  
**2. As vazões análisadas sofreram influência de valores extremos?**
  - Para a análise em questão, foram elaborados dois gráficos de barras, correspondentes a Q90 e Q95, nos quais as medianas de cada década foram destacadas. As médias foram representadas nesses mesmos gráficos através de linhas.

**3. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?**
  - Utilizou-se os mesmos gráficos de barras e linhas para responder esta pergunta. 

## 3. Análise das vazões Q90 e Q95
**1. Sazonalidade - Q90 e Q95** 

Seguindo a metodologia descrita, foram plotados mapas de calor referentes as médias de Q90 e Q95 para observação da sazonalidade. 

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_90.png)

A figura acima refere-se as médias mensais das vazões Q90 distribuídas por décadas. Observa-se que os meses de dezembro, janeiro e fevereiro apresentaram os maiores valores para Q90. Dentre esses meses, destaca-se janeiro com uma média superior a 200 m<sup>3</sup>/s na década de 2000(2000-09).  

Já os meses julho e agosto apresentaram as menores médias para a vazão de referência Q90. A figura abaixo apresenta o mapa de calor referente a vazão Q95. 

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_Q95.png)

Como pode ser observado, os meses com as maiores médias também foram dezembro, janeiro e fevereiro e os meses com menores médias novamente foram julho e agosto. 


**2. Valores Extremos**

Para verificar se a série temporal é influenciada por valores extremos, foram plotados gráficos de barras representando as medianas e linhas representando as médias. As figuras abaixo mostram os resultados obtidos para Q90 e Q95 respectivamente. 

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensal_Q90.png)

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensa_Q95.png)

Nos dois gráficos verifica-se uma forte discrepância entre as médias e medianas de Q90 e Q95 ao longo das décadas, o que sugere a existência de valores extremos na série histórica.  

**3. Mudanças nos padrões das vazões**

Ao analisar todo o período, a década de 1980 se sobressai tanto nas análises de Q90 quanto de Q95. As médias registradas foram de 85,1 m³/s para Q90 e 106,0 m³/s para Q95, enquanto as medianas foram de 74,1 m³/s (Q90) e 105,0 m³/s (Q95). Em contraste, nas décadas anteriores a 1980, as medianas se mantiveram relativamente estáveis. No entanto, as médias mostraram oscilações consideráveis, indicando influências de vazões extremas.

No período subsequente a 1980, percebe-se um ligeiro declínio nas vazões observadas. As medianas se situaram entre 46,7 m³/s e 54,3 m³/s para Q90 e entre 54,6 m³/s e 62,1 m³/s para Q95. Por outro lado, as médias oscilaram entre 59,0 m³/s e 72,4 m³/s (Q90) e 75,2 m³/s e 89,3 m³/s (Q95).

Assim, os dados indicam uma leve diminuição nas vazões de referência nas décadas subsequentes a 1980.

## 4. Conclusão

Nas análises das vazões Q90 e Q95, observou-se que dezembro, janeiro e fevereiro apresentaram as maiores médias. Por outro lado, julho e agosto registraram as menores médias. Esta variação nas vazões ao longo dos meses é influenciada pelas taxas de precipitação da região, que tendem a ser mais elevadas no verão em comparação ao inverno.

Verificou-se também a presença de valores extremos na série temporal, evidenciada pela discrepância entre médias e medianas. Adicionalmente, constatou-se uma leve redução nas vazões de referência nas décadas subsequentes a 1980. Portanto, essa diminuição de vazão, aliada às variações sazonais, pode afetar atividades que dependem dos recursos hídricos.

## Referência

https://www.meioambientepocos.com.br/Anais2023/15-AN%C3%81LISE%20DAS%20VAZ%C3%95ES%20DE%20REFER%C3%8ANCIA%20Q90%20E%20Q95%20NO%20RIO%20DOIS%20RIOS%20S%C3%83O%20FID%C3%89LIS%20RJ.pdf
