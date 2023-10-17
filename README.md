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
1. Nas décadas analisadas quais são os meses que apresentam os maiores e menores valores para as vazões Q90 e Q95?
1. As vazões análisadas sofreram influência de valores extremos?
1. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?

Para responder as perguntas acima foram adotados os seguintes métodos:

**1. Quais são os meses que apresentam os maiores e menores valores para as vazões Q90 e Q95?**
- Para observação da sazonalidade nas décadas da série histórica, foi plotado um mapa de calor(heatmap) com as médias das vazões Q90 e Q95.
1. Quais anos e décadas apresentaram os maiores e menores valores para as vazões de referência?
1. Existe alguma mudança nos padrões das vazões analisadas ao longo das décadas?
