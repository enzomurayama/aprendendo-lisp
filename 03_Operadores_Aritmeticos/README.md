# 🧮 Operadores Aritméticos
Aqui está a listagem de alguns operadores aritméticos em LISP.
Note que ainda existem outros que não estão nesta lista, mas que são menos utilizados.

### [ + ] Soma

Realiza a soma de dois ou mais valores numéricos.

```
(+ <val1> <val2> ... <valn>)
```
<br>

### [ - ] Subtração

Realiza a subtração de um ou mais valores a partir do primeiro valor fornecido.

```
(- <val1> <val2> ... <valn>)
```
<br>

### [ * ] Multiplicação

Multiplica dois ou mais valores numéricos.

```
(* <val1> <val2> ... <valn>)
```
<br>

### [ / ] Divisão

Divide o primeiro valor pelos subsequentes, se fornecidos. Caso contrário, calcula o inverso do valor dado.

```
(/ <val1> <val2> ... <valn>)
```
<br>

---

<br>

### [ sqrt ] Raíz quadrada

Calcula a raiz quadrada de um valor numérico positivo.

```
(sqrt <val>)
```
<br>

### [ expt ] Exponencial

Eleva o valor da base ao valor do expoente.

```
(expt <base> <exponente>)
```
<br>

### [ log ] Logaritmo

Calcula o logaritmo do valor fornecido na base especificada. Se nenhuma base for especificada, o logaritmo natural é calculado.

```
(log <val> <base>)
```
<br>

---

<br>

### [ float ] Float

Converte o valor fornecido para um número de ponto flutuante.

```
(float <val>)
```
<br>

### [ abs ] Valor absoluto

Retorna o valor absoluto (módulo) do valor fornecido.

```
(abs <val>)
```
<br>

### [ truncate ] Trunca

Trunca o valor, removendo a parte decimal e retornando apenas a parte inteira.

```
(truncate <val>)
```
<br>

### [ round ] Arredonda

Arredonda o valor para o inteiro mais próximo.

```
(round <val>)
```
<br>

### [ floor ] Piso

Arredonda o valor para baixo até o inteiro mais próximo.

```
(floor <val>)
```
<br>

### [ ceiling ] Teto

Arredonda o valor para cima até o inteiro mais próximo.

```
(ceiling <val>)
```

<br>

---

<br>

### [ rem ] Resto

Retorna o resto da divisão de *val1* por *val2*.

```
(rem <val1> <val2>)
```
<br>

### [ mod ] Módulo

Retorna o valor do resto da divisão de *val1* por *val2*, mas com um comportamento ligeiramente diferente do operador rem. O valor retornado pelo mod é sempre não negativo e ajustado ao sinal de *val2*.

```
(mod <val1> <val2>)
```
<br>

---

<br>

### [ 1+ ] Incremento
Retorna o valor de *val* incrementado em 1, útil para contagem ou iteração.

```
(1+ <val>)
```
<br>

### [ 1- ] Decremento
Retorna o valor de *val* decrementado em 1.

```
(1- <val>)
```
<br>

---

<br>


### [ sin ] Seno
Calcula o seno de *val*, onde *val* está em radianos.

```
(sin <val>)
```
<br>

### [ cos ] Cosseno
Calcula o cosseno de *val*, onde *val* está em radianos.

```
(cos <val>)
```
<br>

### [ tan ] Tangente
Calcula a tangente de *val*, onde *val* está em radianos.

```
(tan <val>)
```
