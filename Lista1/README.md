| Integrantes |  RA   |
| ----------- | :---: |
| Aline Milene Martins dos Santos | 11201920702 |
| José Wilker Ribeiro de Souza | 11201920635 |
| Paula Eduarda Galerani Mantovan |  11201922127 |

# Tarefa 1 
## Exercício 1

Após calcular as derivadas à mão, obtemos os seguintes polinômios:
- $g(x) = 105 * ((120 * x * x * x) - (240 * x * x) + 144 * x - 24)$
- $dG(x) = 105 * ((360 * x * x) - (480 * x) + 144)$
- $ddG(x) = 105 * (720 * x - 480)$

Depois disso, é realizado o loop de cálculos da sequência de x = 0.0, 0.1, 0.2 ... 0.9, 1.0
```
listaDeValoresDeX <- c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)
listaDeValoresDeG <- c(g(0.0), g(0.1), g(0.2), g(0.3), g(0.4), g(0.5), g(0.6), g(0.7), g(0.8), g(0.9), g(1.0))
listaDeValoresDeDG <- c(dG(0.0), dG(0.1), dG(0.2), dG(0.3), dG(0.4), dG(0.5), dG(0.6), dG(0.7), dG(0.8), dG(0.9), dG(1.0))
listaDeValoresDeDDG <- c(ddG(0.0), ddG(0.1), ddG(0.2), ddG(0.3), ddG(0.4), ddG(0.5), ddG(0.6), ddG(0.7), ddG(0.8), ddG(0.9), ddG(1.0))
```

E montamos uma tabela

`table <- data.frame(Ponto = listaDeValoresDeX, FuncaoG = listaDeValoresDeG, derivadaG = listaDeValoresDeDG, segundaDerivadaG = listaDeValoresDeDDG)`

**Exibição da tabela:** `table`
| i   | Ponto | FuncaoG              | derivadaG           | segundaDerivadaG    | 
| :-: | :---: | :------------------: | :-----------------: | :-----------------: |
| 1   | 0.0   | - 2520.0000000000000 | 15120.000000000000  | - 50400.00000000000 | 
| 2   | 0.1   | - 1247.3999999999999 | 10458.000000000000  | - 42840.00000000000 |
| 3   | 0.2   | - 403.2000000000000  | 6552.000000000001   | - 35280.00000000000 |
| 4   | 0.3   | 88.1999999999996     | 3402.000000000000   | - 27720.00000000000 |
| 5   | 0.4   | 302.3999999999995    | 1007.999999999999   | - 20160.00000000000 |
| 6   | 0.5   | 315.0000000000000    | - 630.000000000000  | - 12600.00000000000 |
| 7   | 0.6   | 201.6000000000002    | - 1512.000000000001 | - 5040.00000000000  |
| 8   | 0.7   | 37.7999999999999     | - 1638.000000000002 | 2519.99999999999    |
| 9   | 0.8   | - 100.8000000000008  | - 1007.999999999999 | 10080.00000000000   |
| 10  | 0.9   | - 138.6000000000008  | 378.000000000002    | 17640.00000000000   |
| 11  | 1.0   | 0.0000000000000      | 2520.000000000000   | 25200.00000000000   |

**Conclusão:** as três raízes x1 < x2 < x3 encontram-se no intervalo [0, 1], pois a função troca de sinal duas vezes durante o intervalo. Além disso, a função é exatamente 0 no ponto x = 1.0

---

## Exercício 2

- **Para o intervalo [0.2, 0.3], temos que:**
  - $g(0.2) = -403,2$ e $g(0.3) = 88,2$
  - Logo, $g(0.2) * g(0.3) < 0$.
- Também, se calcularmos o valor da primeira derivada $g′(𝑥) = 105(360𝑥^2−480𝑥+144)$ nos extremos do intervalo, obtemos:  
  - $g'(0.2) = 6552$ e $g'(0.3) = 3402$
  - Logo, a sendo função derivável e contínua, a função é crescente neste intervalo. E portanto, é diferente de 0 para todo x.
- Por fim, se calcularmos o valor da segunda  derivada $g′′(𝑥) = 105(720𝑥 −480)$ nos extremos do intervalo, obtemos:
  - $g'(0.2) = -35280$ e $g'(0.3) = -27720$
  - Logo, a função não troca de sinal.

<br>

- **Para o intervalo [0.7, 0.8], temos que:**
  - $g(0.7) = 37,8$ e $g(0.8) = -100,8$
  - Logo, $g(0.7) * g(0.8) < 0$.
- Também, se calcularmos o valor da primeira derivada $g′(𝑥) = 105(360𝑥^2−480𝑥+144)$ nos extremos do intervalo, obtemos:
  - $g'(0.7) = -1638$ e $g'(0.8) = -1008$
  - Logo, a sendo função derivável e contínua, a função é decrescente neste intervalo. E portanto, é diferente de 0 para todo x.
- Por fim, se calcularmos o valor da segunda  derivada $g′′(𝑥) = 105(720𝑥 −480)$ nos extremos do intervalo, obtemos:
  - $g'(0.7) = 2520$ e $g'(0.8) = 10080$
  - Logo, a função não troca de sinal.


**Conclusão:** Para ambos os casos, as condições são satisfeitas. E portanto, o teorema da Convexidade é válido para tais.

----------------

## Exercício 3

Definir a função 'g' e sua derivada
- $g(x) = 105 * ((120 * x * x * x) - (240 * x * x) + 144 * x - 24)$
- $dG(x) = 105 * ((360 * x * x) - (480 * x) + 144)$

E também as condições iniciais
```
x0 = 0.3
x1 = 0.7
eps = 10 ^ -10
itmax <- 20
```

Implementar o método de Newton

```
Newton <- function(f, df, x0, eps, itmax) {
    ** o código completo se encontra no arquivo .R ** 
    return(iteracoes)
}
```

**Chamar a função Newton para x0:** `iteracoes <- Newton(g, dG, x0, eps, itmax)`
- Raiz: 0.2763932
- Número de iterações: 5

**Imprimir a tabela de iterações:** `print(iteracoes)`
| iteracao |         raiz         |         erro          |       x0          |
| :------: | :------------------: | :-------------------: | :---------------: |
|   0      |  0.300000000000000   |  0.00000000000000e+00 | 0.300000000000000 |
|   1      |  0.274074074074074   | -2.59259259259258e-02 | 0.274074074074074 |
|   2      |  0.276373989463868   | 2.29991538979352e-03  | 0.276373989463868 |
|   3      |  0.276393200914634   | 1.92114507659991e-05  | 0.276393200914634 |
|   4      |  0.276393202250021   | 1.33538724522708e-09  | 0.276393202250021 |
|   5      |  0.276393202250021   | 1.66533453693773e-16  | 0.276393202250021 |

<br>

**Chamar a função Newton para x1:** `iteracoes <- Newton(g, dG, x1, eps, itmax)`
- Raiz: 0.72360679774998
- Número de iterações: 4

**Imprimir a tabela de iterações:** `print(iteracoes)`

| iteracao |         raiz         |         erro          |       x1          |
| :------: | :------------------: | :-------------------: | :---------------: |
| 0        | 0.700000000000000    | 0.00000000000000e+00  | 0.700000000000000 |
| 1        | 0.723076923076923    | 2.30769230769230e-02  | 0.723076923076923 |
| 2        | 0.723606412707751    | 5.29489630828439e-04  | 0.723606412707751 |
| 3        | 0.723606797749775    | 3.85042023154369e-07  | 0.723606797749775 |
| 4        | 0.723606797749980    | 2.05058192648266e-13  | 0.723606797749980 |


---

## Exercício 4

Para os valores de $x1$, $x2$ e $x3$ abaixo:
- $x1 = 0.27639320225002$
- $x2 = 0.72360679774998$
- $x3 = 1.00000000000000$

Foi calculado os valores de $f′′(𝑥) = 105(30𝑥^4−80𝑥^3+72𝑥^2−24𝑥+2)$ nos pontos:
- $f′′(0) = 210.00000000$
- $f′′(1) = 0.00000000$
- $f′′(x1) = -67.95742753$
- $f′′(x2) = 25.95742753$
- $f′′(x3) = 0.00000000$

Portanto, o valor *máximo* para $f′′(𝑥)$ é quando $x = 0$, é $h <= 0,0000239045721866879$

Sendo $h = (b-a)/m$ e $m = (b-a)/h$

Então, $m = 1/0,0000239045721866879 = 41833,00133$

Logo, podemos calcular Tm 

```
Tm_retorno <- function(f, a, b, m) {
    ** o código completo se encontra no arquivo .R ** 
  return(Tm)
}
```

**Conclusão:** e obter $Tm = 0.99999999999999988898$, ou seja, com 15 casas de precisão. 

---
---

# Tarefa 2

## Exercício 1

Integrando a função dada no enunciado, obtemos $F(t)= (15t^7 - 70t^6 + 126t^5 - 105t^4 + 35t^3 -0.5)$

Derivando, encontramos $dF(t) = (105 (t-1)^4) (t^2)$ 

E com isso, podemos aplicar o método de Newton para descobrir o 't'. Como o método já foi implementado anteriormente, vamos apenas realizar a sua chamada com os seguintes valores iniciais:
```
x0 = 0.5
eps = 10^-10
it_max = 20
Newton(F, dF, x0, eps, it_max)
```

E obtemos como resultado $t = 0.3641160864480827$. Logo, é possível confirmar que a integral no intervalo [0,t] de $f(x)dx$ - 0.5 é igual a $F(t) = 0$.

E portanto, vamos comparar os métodos da bissecção e falsa posição com auxílio da biblioteca `System.time` do R.

Implementação do método da bissecção
```
Bissec = function(f, a, b, eps, it_max) {
    ** o código completo se encontra no arquivo .R ** 
    return(Tab)
}
```

Implementação do método da falsa posição
```
FalsaPosit = function(f, a, b, eps, it_max) {
    ** o código completo se encontra no arquivo .R ** 
    return(Tab)
}
```

E com os parâmetros abaixo, obtemos:
```
a = 0
b = 0.3641160864480827
eps = 10^-10
it_max = 50
x0 = 0.5
```

- $f(t) = 105 t^2 (1 - t)^4$
- $F(t)= 15t^7 - 70t^6 + 126t^5 - 105t^4 + 35t^3 -0.5$
- $dF(t) = (105(t-1)^4) t^2$

Chamando a execução dos métodos com a biblioteca temporizadora:
```
system.time(Newton(F, dF, x0, eps, it_max))
system.time(Bissec(F, a, b, eps, it_max))
system.time(FalsaPosit(f, a, b, eps, it_max))
```

Obtemos:

| método    | usuário            |    sistema          | decorrido          |
| :-------: | :----------------: | :-----------------: | :----------------: | 
| Newton    | 0.0000000000000000 |  0.0000000000000000 | 0.0200000000004366 | 
| Bissec    | 0.02               |  0.00               | 0.00               |
| FalsaPosit| 0                  |  0                  | 0                  |

**Conclusão:** Portanto, é notável que o método do FalsaPosição ganhou a disputa de tempo de execução. Dado que, o b = t já é a raíz desejada da solução e o método diferente dos demais não quebra o intervalo na primeira execução.

## Exercício 2

Exibindo as aproximações geradas por cada método:

**Newton**
`Newton(F, dF, x0, eps, it_max)`
- Raiz: 0.364116086448083 
- Número de iterações: 5 

| iteracao |         raiz         |         erro          |       x0          |
| :------: | :------------------: | :-------------------: | :---------------: |
| 1        | 0 0.500000000000000  | 0.00000000000000e+00  | 0.500000000000000 | 
| 2        | 1 0.333333333333333  | -1.66666666666667e-01 | 0.333333333333333 |
| 3        | 2 0.363988095238095  | 3.06547619047619e-02  | 0.363988095238095 |
| 4        | 3 0.364116079931881  | 1.27984693785277e-04  | 0.364116079931881 |
| 5        | 4 0.364116086448083  | 6.51620202241077e-09  | 0.364116086448083 |
| 6        | 5 0.364116086448083  | 1.11022302462516e-16  | 0.364116086448083 |

**Bissecção**
`Bissec(F, a, b, eps, it_max)`
| NumIter |         m         |        M          |   alpha           |   f(alpha)            |
| :-----: | :---------------: | :---------------: | :---------------: | :-------------------: |
|   1     | 0.000000000000000 | 0.364116086448083 | 0.182058043224041 | -3.81399513431289e-01 |
|   2     | 0.182058043224041 | 0.364116086448083 | 0.273087064836062 | -2.07132079778780e-01 |
|   3     | 0.273087064836062 | 0.364116086448083 | 0.318601575642072 | -1.04560941369565e-01 |
|   4     | 0.318601575642072 | 0.364116086448083 | 0.341358831045078 | -5.21550722470167e-02 |
|   5     | 0.341358831045078 | 0.364116086448083 | 0.352737458746580 | -2.60020005578594e-02 |
|   6     | 0.352737458746580 | 0.364116086448083 | 0.358426772597331 | -1.29767933294953e-02 |
|   7     | 0.358426772597331 | 0.364116086448083 | 0.361271429522707 | -6.48169309621083e-03 |
|   8     | 0.361271429522707 | 0.364116086448083 | 0.362693757985395 | -3.23909005382106e-03 |
|   9     | 0.362693757985395 | 0.364116086448083 | 0.363404922216739 | -1.61909588375742e-03 |
|  10     | 0.363404922216739 | 0.364116086448083 | 0.363760504332411 | -8.09434407150311e-04 |
|  11     | 0.363760504332411 | 0.364116086448083 | 0.363938295390247 | -4.04688663995678e-04 |
|  12     | 0.363938295390247 | 0.364116086448083 | 0.364027190919165 | -2.02337177629630e-04 |
|  13     | 0.364027190919165 | 0.364116086448083 | 0.364071638683624 | -1.01166797789265e-04 |
|  14     | 0.364071638683624 | 0.364116086448083 | 0.364093862565853 | -5.05829508337108e-05 |
|  15     | 0.364093862565853 | 0.364116086448083 | 0.364104974506968 | -2.52913633638219e-05 |
|  16     | 0.364104974506968 | 0.364116086448083 | 0.364110530477525 | -1.26456536639896e-05 |
|  17     | 0.364110530477525 | 0.364116086448083 | 0.364113308462804 | -6.32281982682059e-06 |
|  18     | 0.364113308462804 | 0.364116086448083 | 0.364114697455443 | -3.16140816192245e-06 |
|  19     | 0.364114697455443 | 0.364116086448083 | 0.364115391951763 | -1.58070364308927e-06 |
|  20     | 0.364115391951763 | 0.364116086448083 | 0.364115739199923 | -7.90351712076642e-07 |
|  21     | 0.364115739199923 | 0.364116086448083 | 0.364115912824003 | -3.95175828282746e-07 |
|  22     | 0.364115912824003 | 0.364116086448083 | 0.364115999636043 | -1.97587907591057e-07 |
|  23     | 0.364115999636043 | 0.364116086448083 | 0.364116043042063 | -9.87939516861047e-08 |
|  24     | 0.364116043042063 | 0.364116086448083 | 0.364116064745073 | -4.93969751769185e-08 |
|  25     | 0.364116064745073 | 0.364116086448083 | 0.364116075596578 | -2.46984876994816e-08 |
|  26     | 0.364116075596578 | 0.364116086448083 | 0.364116081022330 | -1.23492438497408e-08 |
|  27     | 0.364116081022330 | 0.364116086448083 | 0.364116083735206 | -6.17462170282579e-09 |
|  28     | 0.364116083735206 | 0.364116086448083 | 0.364116085091645 | -3.08731062936829e-09 |
|  29     | 0.364116085091645 | 0.364116086448083 | 0.364116085769864 | -1.54365542570645e-09 |
|  30     | 0.364116085769864 | 0.364116086448083 | 0.364116086108973 | -7.71827490808619e-10 |
|  31     | 0.364116086108973 | 0.364116086448083 | 0.364116086278528 | -3.85913745404309e-10 |
|  32     | 0.364116086278528 | 0.364116086448083 | 0.364116086363305 | -1.92956539635247e-10 |

`FalsaPosit(f, a, b, eps, it_max)`
| NumIter |         m         |        M          |   alpha           |   f(alpha)            |
| :-----: | :---------------: | :---------------: | :---------------: | :-------------------: |
|   1     |         0         | 0.364116086448083 |         0         |              0        |
|   2     |         0         | 0.364116086448083 |         0         |              0        |
|   3     |         0         | 0.364116086448083 |         0         |              0        |
|   4     |         0         | 0.364116086448083 |         0         |              0        |
|   5     |         0         | 0.364116086448083 |         0         |              0        |
|   6     |         0         | 0.364116086448083 |         0         |              0        |
|   7     |         0         | 0.364116086448083 |         0         |              0        |
|   8     |         0         | 0.364116086448083 |         0         |              0        |
|   9     |         0         | 0.364116086448083 |         0         |              0        |
|  10     |         0         | 0.364116086448083 |         0         |              0        |
|  11     |         0         | 0.364116086448083 |         0         |              0        |
|  12     |         0         | 0.364116086448083 |         0         |              0        |
|  13     |         0         | 0.364116086448083 |         0         |              0        |
|  14     |         0         | 0.364116086448083 |         0         |              0        |
|  15     |         0         | 0.364116086448083 |         0         |              0        |
|  16     |         0         | 0.364116086448083 |         0         |              0        |
|  17     |         0         | 0.364116086448083 |         0         |              0        |
|  18     |         0         | 0.364116086448083 |         0         |              0        |
|  19     |         0         | 0.364116086448083 |         0         |              0        |
|  20     |         0         | 0.364116086448083 |         0         |              0        |
|  21     |         0         | 0.364116086448083 |         0         |              0        |
|  22     |         0         | 0.364116086448083 |         0         |              0        |
|  23     |         0         | 0.364116086448083 |         0         |              0        |
|  24     |         0         | 0.364116086448083 |         0         |              0        |
|  25     |         0         | 0.364116086448083 |         0         |              0        |
|  26     |         0         | 0.364116086448083 |         0         |              0        |
|  27     |         0         | 0.364116086448083 |         0         |              0        |
|  28     |         0         | 0.364116086448083 |         0         |              0        |
|  29     |         0         | 0.364116086448083 |         0         |              0        |
|  30     |         0         | 0.364116086448083 |         0         |              0        |
|  31     |         0         | 0.364116086448083 |         0         |              0        |
|  32     |         0         | 0.364116086448083 |         0         |              0        |
|  33     |         0         | 0.364116086448083 |         0         |              0        |
|  34     |         0         | 0.364116086448083 |         0         |              0        |
|  35     |         0         | 0.364116086448083 |         0         |              0        |

---

# Tarefa 3

## Exercício 1
Primeiro foi fixado o valor das variáveis
```
a <- 0
b <- 1
s <- 5
results <- data.frame(k = integer(), h = numeric(), T = numeric(), E = numeric())
```

Adicionado um loop “principal”, ou seja, um laço, para passar pelos valores de “k” no intervalo de 3 a 9 e dentro dele:
- Foi calculado o valor de “h” máximo que depende da variável “k”;
- Com o valor máximo de “h” foi feito o cálculo para encontrar o valor de “l”, que será usado no valor de “m”;

Para encontrar o valor de “T” calculamos o valor de “m” e de “h”

- Criamos um loop para realizar a parte de somatório da equação (1). Calculando “xi” e “fxi”. Os valores de “fxi” foram adicionados em uma lista para realizar a soma;
- Realizamos a parte da equação (1) que calcula “fxo” e “fxm”;
- E por fim, podemos encontrar “T” pegando o resultado dos passos anteriores e multiplicamos por “h”;

Para o cálculo do erro precisamos do valor de “T” e do valor da integral da função:
- Primeiro calculamos o valor da integral substituindo pelo intervalo “a” e ”b” (no cálculo da integral utilizamos a regra da potência)
- Finalmente para encontrar o erro “E” fizemos a subtração de “T” e da integral encontrada. E printamos os valores encontrados.

Dado a função implementada
```
for (k in 3:9) {
  ** o código completo se encontra no arquivo .R ** 
  results <- rbind(results, data.frame(k = k, h = 2 ^ (-l), T = t, E = e))
}

```

Os resultados podem ser exibidos em uma tabela, executando o código: **print(results)** 



