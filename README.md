# Análise das Vazões de Referência Q90 e Q95
Análise das vazões de referências Q90 e Q95 no Rio Dois Rio em São Fidélis - RJ.
![Alt text](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Rio-Dois-Rios-em-Sao-Fidelis-1.jpg) 

## 1. Introdução
O objetivo desse projeto consiste em analisar as vazões de referência Q90 e Q95 no Rio Dois Rios em São Fidélis - RJ. Para tanto, foram utilizados dados diários de vazão da estação fluviométrica código 58874000 localizada no município de São Fidélis - RJ. A série temporal analisada compreendeu um período de 83 anos (1940-2022), sendo obtida através da Agência Nacional de Águas e Saneamento Básico (ANA).

Vale ressaltar, que os resultados aqui apresentados fazem parte de um artigo publicado nos anais do 20° Congresso Nacional de Meio Ambiente realizado no município de Poços de Caldas - MG no ano de 2023, cujos os autores são Douglas da Silva Ferreira e Eliane Barbosa Santos. Ao final do projeto se encontra a referência do artigo mencionado.

## 2. Metodologia
A aquisição dos dados de vazão da estação 58874000 em São Fidélis - RJ foi realizada pelo site da [ANA](https://www.snirh.gov.br/hidroweb-mobile/mapa), onde os dados foram baixados na extensão **csv**. Após o processamento e limpeza dos dados foi exportado um dataframe, também no formato csv, para sua posterior análise. Realizada esta etapa, foi feita então a análise dos dados de vazão por meio das vazões de referência Q90 e Q95.

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
