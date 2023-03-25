# Tarefa 3

# Exercício 2

# PARA K IGUAL AO DO EXEMPLO - K=3 e y = np.array([[1], [1], [1]])
import math
import numpy as np


def exercicio_3_2_com_k_fixo_em_3():
    k = 3
    r = k*2
    lista = []
    for l in range(0, k):
        x = 2**l
        for j in range(2, r + 2, 2):
            y = x ** j
            lista.append(y)

    matriz = np.array(lista).reshape((k, k))

    # eliminacao de gauss
    A = matriz
    y = np.array([[1], [1], [1]])
    x = np.zeros_like(y)
    m = k

    for j in range(m-1):
        if A[j][j] == 0:
            for k in range(j+1, m-1):
                if A[k][j] != 0:
                    A[j], A[k] = A[k], A[j]
                else:
                    print("A matriz é singular.")

        for i in range(j+1, m):
            mi = (A[i][j] / A[j][j]) * (-1)
            for k in range(j, m):
                A[i][k] += mi * A[j][k]
            y[i] += int(mi) * int(y[j])

        # retroativo
        for i in range(m-1, -1, -1):
            x[i] = y[i]
            for j in range(i+1, m):
                x[i] = x[i] - (A[i][j] * x[j])
            x[i] = x[i] / A[i][i]
    print(A)
    print(y)
    print(x)


# PARA UM K DINÂMICO E COM Y DEPENDENDO DO ERRO DO EXERCICIO 3.1
a = 0
b = 1
s = 5


def exercicio_3_2(k):
    # PRIMEIRA PARTE - ENCONTRAR E - ERRO
    # calcula o valor maximo de h
    h_max = 2**(k-1)

    # descobrindo o valor de l
    max_value = h_max
    lista_l = []
    i = 1
    while i <= max_value:
        l = int(math.log2(i))
        lista_l.append(l)
        i *= 2

    lista_e = []

    # calcula T
    for l in lista_l:
        m = s * (2**(k-1-l))
        h = (b-a)/m

        # somatorio de f(xi)
        lista = []
        for i in range(1, m):
            x_i = a + (i*h)
            f_x_i = x_i ** ((2*k)-1)
            lista.append(f_x_i)

        soma = sum(lista)

        # f(x0)
        x_0 = a + 0*h
        f_x_0 = x_0**((2*k)-1)

        # f(xm)
        x_m = a + m*h
        f_x_m = x_m**((2*k)-1)

        # calculo de T
        t = h * (f_x_0/2 + soma + f_x_m/2)

        # calculo de E - erro
        integral = ((b**(2*k))/(2*k)) - ((a**(2*k))/(2*k))
        e = t - integral
        lista_e.append(e)

    # SEGUNDA PARTE - RESOLVENDO O SISTEMA
    # montando a matriz
    r = k*2
    lista = []
    for l in range(0, k):
        x = 2**l
        for j in range(2, r + 2, 2):
            y = x ** j
            lista.append(y)

    matriz = np.array(lista).reshape((k, k))

    # eliminacao de gauss
    A = matriz
    y = matriz = np.array(lista_e).reshape(len(lista_e), 1)
    x = np.zeros_like(y)
    m = k

    for j in range(m-1):
        if A[j][j] == 0:
            for k in range(j+1, m-1):
                if A[k][j] != 0:
                    A[j], A[k] = A[k], A[j]
                else:
                    print("A matriz é singular.")

        for i in range(j+1, m):
            mi = (A[i][j] / A[j][j]) * (-1)
            for k in range(j, m):
                A[i][k] += mi * A[j][k]
            y[i] += int(mi) * int(y[j])

        # retroativo
        for i in range(m-1, -1, -1):
            x[i] = y[i]
            for j in range(i+1, m):
                x[i] = x[i] - (A[i][j] * x[j])
            x[i] = x[i] / A[i][i]

    print(A)
    print(y)
    print(x)


exercicio_3_2(3)
exercicio_3_2(4)
exercicio_3_2(5)
exercicio_3_2(6)
exercicio_3_2(7)
exercicio_3_2(8)
