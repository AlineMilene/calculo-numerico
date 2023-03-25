# Importante setar as casas decimais no inicio das execuções!!!!
options(digits = 20)

# Tarefa 1 

# Exercicio 1
# Declaração de derivadas de g
g = function(x) { 105 * ((120 * x * x * x) - (240 * x * x) + 144 * x - 24) }
dG = function(x) { 105 * ((360 * x * x) - (480 * x) + 144) }
ddG = function(x) { 105 * (720 * x - 480) }

# Loop de cálculos da sequência de x = 0.0, 0.1, 0.2 ... 0.9, 1.0
listaDeValoresDeX <- c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)
listaDeValoresDeG <- c(g(0.0), g(0.1), g(0.2), g(0.3), g(0.4), g(0.5), g(0.6), g(0.7), g(0.8), g(0.9), g(1.0))
listaDeValoresDeDG <- c(dG(0.0), dG(0.1), dG(0.2), dG(0.3), dG(0.4), dG(0.5), dG(0.6), dG(0.7), dG(0.8), dG(0.9), dG(1.0))
listaDeValoresDeDDG <- c(ddG(0.0), ddG(0.1), ddG(0.2), ddG(0.3), ddG(0.4), ddG(0.5), ddG(0.6), ddG(0.7), ddG(0.8), ddG(0.9), ddG(1.0))

# Montagem da tabela
table <- data.frame(Ponto = listaDeValoresDeX, FuncaoG = listaDeValoresDeG, derivadaG = listaDeValoresDeDG, segundaDerivadaG = listaDeValoresDeDDG)

# Exibição da tabela
table

# Gráfico
plot(listaDeValoresDeX, listaDeValoresDeG)
abline(v = 0, h = 0)


# Exercicio 3
# Definir a função e sua derivada
g = function(x) { 105 * ((120 * x * x * x) - (240 * x * x) + 144 * x - 24) }
dG = function(x) { 105 * ((360 * x * x) - (480 * x) + 144) }

# Definir as condições iniciais
x0 = 0.3
x1 = 0.7
eps = 10 ^ -10
itmax <- 20

# Implementar o método de Newton
Newton <- function(f, df, x0, eps, itmax) {
  L <- seq(1, itmax)
  a <- x0
  iteracoes <- data.frame(iteracao = 0, raiz = a, erro = 0, x0 = a)
  for (i in L) {
    raiz <- a
    if (df(raiz) != 0) {
      # se a derivada for zero sai
      raiz <- raiz - f(raiz) / df(raiz)
      erro <- raiz - a
      a <- raiz
      iteracao <- i
      nova_linha <- data.frame(iteracao = i, raiz = raiz, erro = erro, x0 = a)
      iteracoes <- rbind(iteracoes, nova_linha)
    } else {
      iteracao <- itmax + 1
      break
    }
    if (abs(erro) <= eps) {
      break
    }
  }
  if (iteracao > itmax) {
    cat("Não foi possível encontrar a raiz em", itmax, "iterações.\n")
  } else {
    cat("Raiz:", raiz, "\n")
    cat("Número de iterações:", iteracao, "\n")
    return(iteracoes)
  }
}

# Chamar a função Newton
iteracoes <- Newton(g, dG, x0, eps, itmax)

# Imprimir a tabela de iterações
print(iteracoes)

# Chamar a função Newton
iteracoes <- Newton(g, dG, x1, eps, itmax)

#  Imprimir a tabela de iterações
print(iteracoes)

#  ---------------- 

# Exercício 4

# Calculando Tm

Tm_retorno <- function(f, a, b, m) {
  h <- (b - a) / m
  x <- seq(a, b, length.out = m + 1)
  Tm <- h / 2 * (f(a) + 2 * sum(f(x[2:m])) + f(b))
  return(Tm)
}

f = function(x) { 105 * x ^ 2 * (1 - x) ^ 4 }
Tm_retorno(f, 1, 0, 41834)

#  ---------------- 

# Tarefa 2

# Exercício 1
# Integrando a função dada no enunciado, obtemos F(t) 
F = function(t) {(((15) * (t) ^ 7) - ((70) * (t) ^ 6) + ((126) * (t) ^ 5) - ((105) * (t) ^ 4) + ((35) * (t) ^ 3) - (0.5)) }

# Derivando, encontramos dF = f(t)
dF = function(t) {(105 * ((t - 1) ^ 4) * (t * t)) }

# Condições iniciais
x0 = 0.5
eps = 10 ^ -10
it_max = 20
Newton(F, dF, x0, eps, it_max)

# Implementação do método da bissecção
Bissec = function(f, a, b, eps, it_max) {

  Tab = NULL
  iter = 0

  alpha = 0.5 * (a + b)

  while ((f(alpha - eps) * f(alpha + eps)) > 0 && iter < it_max) {
    alpha = 0.5 * (a + b)
    iter = iter + 1
    linha = c(iter, a, b, alpha, f(alpha))

    if (f(alpha) * f(a) < 0 || f(alpha) * f(a) == 0) # verifica se a raíz está no intervalo [a, mid]
    {
      b = alpha
    }
    if (f(alpha) * f(a) > 0) # verifica se a raíz está no intervalo [mid, b]
    {
      a = alpha
    }

    Tab = rbind(Tab, linha)

  }
  Tab = as.matrix(Tab)
  colnames(Tab, do.NULL = TRUE, prefix = "col")
  colnames(Tab) <- c("NumIter", "m", "M", "alpha", "f(alpha)")


  return(Tab)
}

# Implementação do método da falsa posição
FalsaPosit = function(f, a, b, eps, it_max) {

  Tab = NULL
  alpha = 0.5 * (a + b)
  iter = 0

  while ((f(alpha - eps) * f(alpha + eps)) > 0 && iter < it_max) {
    alpha = (a * f(b) - b * f(a)) / (f(b) - f(a))
    iter = iter + 1

    linha = c(iter, a, b, alpha, f(alpha))

    if (f(alpha) * f(a) < 0) {
      b = alpha
    }
    if (f(alpha) * f(a) > 0) {
      a = alpha
    }

    Tab = rbind(Tab, linha)

  }
  Tab = as.matrix(Tab)
  colnames(Tab, do.NULL = TRUE, prefix = "col")
  colnames(Tab) <- c("NumIter", "m", "M", "alpha", "f(alpha)")

  return(Tab)

}

# Logo, comparando os métodos de execução com auxílio da biblioteca System.time
a = 0
b = 0.3641160864480827
eps = 10 ^ -10
it_max = 50
x0 = 0.5
f = function(t) {(105 * t ^ 2 * (1 - t) ^ 4) }
F = function(t) {(((15) * (t) ^ 7) - ((70) * (t) ^ 6) + ((126) * (t) ^ 5) - ((105) * (t) ^ 4) + ((35) * (t) ^ 3) - (0.5)) }
dF = function(t) {(105 * ((t - 1) ^ 4) * (t * t)) }

system.time(Newton(F, dF, x0, eps, it_max))
system.time(Bissec(F, a, b, eps, it_max))
system.time(FalsaPosit(f, a, b, eps, it_max))

# Exercício 2

options(digits = 16)
Newton(F, dF, x0, eps, it_max)
Bissec(F, a, b, eps, it_max)
FalsaPosit(f, a, b, eps, it_max)

# Tarefa 3

## Exercício 1
a <- 0
b <- 1
s <- 5
results <- data.frame(k = integer(), h = numeric(), T = numeric(), E = numeric())

for (k in 3:9) {
  h_max <- 2 ^ (k - 1)
  max_value <- h_max
  lista_l <- c()
  i <- 1
  while (i <= max_value) {
    l <- as.integer(log2(i))
    lista_l <- c(lista_l, l)
    i <- i * 2
  }

  for (l in lista_l) {
    m <- s * (2 ^ (k - 1 - l))
    h <- (b - a) / m

    lista <- c()
    for (i in 1:(m - 1)) {
      x_i <- a + (i * h)
      f_x_i <- x_i ^ ((2 * k) - 1)
      lista <- c(lista, f_x_i)
    }

    soma <- sum(lista)

    x_0 <- a + 0 * h
    f_x_0 <- x_0 ^ ((2 * k) - 1)

    x_m <- a + m * h
    f_x_m <- x_m ^ ((2 * k) - 1)

    t <- h * (f_x_0 / 2 + soma + f_x_m / 2)

    integral <- ((b ^ (2 * k)) / (2 * k)) - ((a ^ (2 * k)) / (2 * k))
    e <- t - integral

    results <- rbind(results, data.frame(k = k, h = 2 ^ (-l), T = t, E = e))
  }
}

print(results)

