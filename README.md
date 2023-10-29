# Analysis of Reference Flows Q90 and Q95
Analysis of the Q90 and Q95 reference flows in the Dois Rios River in São Fidélis - RJ.
![Alt text](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Rio-Dois-Rios-em-Sao-Fidelis-1.jpg)

## 1. Introduction
The objective of this project is to analyze the Q90 and Q95 reference flows in the Dois Rios River in São Fidélis - RJ. To do so, daily flow data from the river gauge station code 58874000 located in the municipality of São Fidélis - RJ were used. The time series analyzed spanned a period of 83 years (1940-2022), and was obtained through the National Water and Basic Sanitation Agency (ANA).

It is worth noting that the results presented here are part of an article published in the proceedings of the 20th National Environmental Congress held in the municipality of Poços de Caldas - MG in 2023, whose authors are Douglas da Silva Ferreira and Eliane Barbosa Santos. At the end of the project, the reference to the mentioned article can be found.

## 2. Methodology
The flow data acquisition from station 58874000 in São Fidélis - RJ was carried out through the [ANA](https://www.snirh.gov.br/hidroweb-mobile/mapa) website, where the data was downloaded in **csv** format.  After processing and cleaning the data, a dataframe was exported, also in csv format, for its subsequent analysis. Having completed this step, the flow data was then analyzed using the Q90 and Q95 reference flows.

The reference flows Q90 and Q95 correspond to the 90th and 95th percentiles, respectively. Therefore, these provide information about the flows present in a river 90% of the time (Q90) and 95% of the time (Q95). Such information is essential for decision-making regarding the use of water from a river or another water resource. 

The object of analysis is the Dois Rios River, located in the municipality of São Fidélis, RJ. It is formed by the confluence of two significant rivers for the northern and northwestern regions of the state of Rio de Janeiro: the Rio Negro and the Rio Grande. The following image illustrates the Dois Rios River, its tributaries, the location of the São Fidélis municipality, and the selected river gauge station.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Bacia%20Dois%20Rios.png)

**This project's main objective was to answer the following questions:**
1. In the decades analyzed, which months showed the highest and lowest values for the Q90 and Q95 flows?
1. Were the analyzed flows influenced by extreme values?
1. Is there any change in the patterns of the analyzed flows over the decades?

To answer the above questions, the following methods were adopted:

**1. In the decades analyzed, which months showed the highest and lowest values for the Q90 and Q95 flows?**
- To observe seasonality over the decades of the historical series, heat maps were plotted with the averages of the Q90 and Q95 flows.
  
**2. Were the analyzed flows influenced by extreme values?**
  - "For the analysis in question, two bar charts were created, corresponding to Q90 and Q95, in which the medians of each decade were highlighted. The averages were represented on these same charts using lines.

**3. Is there any change in the patterns of the analyzed flows over the decades?**
  - The same bar and line charts were used to answer this question.

## 3. Analysis of the Q90 and Q95 flows
**1. Seasonality - Q90 and Q95** 

Following the described methodology, heat maps were plotted related to the averages of Q90 and Q95 to observe seasonality.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_90.png)

The figure above pertains to the monthly averages of Q90 flows distributed by decade. It can be observed that the months of December, January, and February had the highest values for Q90. Among these months, January stands out with an average exceeding 200 m<sup>3</sup>/s  in the 2000s decade (2000-09).

Meanwhile, the months of July and August displayed the lowest averages for the Q90 reference flow. The figure below shows the heat map related to the Q95 flow.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Heatmap_Q95.png)

As can be seen, the months with the highest averages were also December, January, and February, while the months with the lowest averages were once again July and August.


**2. Extreme Values**

To check if the time series is influenced by extreme values, bar charts were plotted representing the medians and lines representing the averages. The figures below show the results obtained for Q90 and Q95, respectively.

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensal_Q90.png)

![](https://github.com/douglassferreira/Analise-de-Vaz-es-Q90-e-Q95/blob/main/img/Mensa_Q95.png)

In both charts, there is a strong discrepancy between the averages and medians of Q90 and Q95 over the decades, which suggests the presence of extreme values in the historical series. 

**3. Changes in flow patterns**

When analyzing the entire period, the 1980s stand out in both the Q90 and Q95 analyses. The recorded averages were 85.1 m³/s for Q90 and 106.0 m³/s for Q95, while the medians were 74.1 m³/s (Q90) and 105.0 m³/s (Q95). In contrast, in the decades before the 1980s, the medians remained relatively stable. However, the averages showed significant fluctuations, indicating influences from extreme flows.

In the period following 1980, a slight decline in observed flows is noticeable. The medians ranged between 46.7 m³/s and 54.3 m³/s for Q90 and between 54.6 m³/s and 62.1 m³/s for Q95. On the other hand, the averages fluctuated between 59.0 m³/s and 72.4 m³/s (Q90) and 75.2 m³/s and 89.3 m³/s (Q95).

Thus, the data indicates a slight decrease in reference flows in the decades following the 1980s.

## 4. Conclusion

In the analyses of the Q90 and Q95 flows, it was observed that December, January, and February had the highest averages. On the other hand, July and August recorded the lowest averages. This variation in flows throughout the months is influenced by the precipitation rates of the region, which tend to be higher in the summer compared to the winter.

It was also noted the presence of extreme values in the time series, evidenced by the discrepancy between averages and medians. Additionally, there was a slight reduction in reference flows in the decades following the 1980s. Therefore, this decrease in flow, combined with seasonal variations, may affect activities that rely on water resources.

## Reference

https://www.meioambientepocos.com.br/Anais2023/15-AN%C3%81LISE%20DAS%20VAZ%C3%95ES%20DE%20REFER%C3%8ANCIA%20Q90%20E%20Q95%20NO%20RIO%20DOIS%20RIOS%20S%C3%83O%20FID%C3%89LIS%20RJ.pdf
