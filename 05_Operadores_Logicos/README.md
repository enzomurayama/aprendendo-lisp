# 👩🏻‍💻 Operadores Lógicos
Em Lisp, os operadores lógicos são utilizados para realizar operações de comparação e manipulação de valores booleanos. 

<br>

### [ not ] Negação 

Retorna o oposto do valor lógico fornecido. Se o valor for nil, retorna *t* (verdadeiro), caso contrário retorna *nil*.

```
(not <val>)
```
<br>

### [ and ] Conjunção 

Retorna *t* se todos os argumentos forem verdadeiros. Caso contrário, retorna *nil*.

```
(and <val1> <val2> ... <valn>)
```
<br>

### [ or ] Disjunção 

Retorna *t* se pelo menos um dos argumentos for verdadeiro. Retorna *nil* se todos forem falsos.

```
(or <val1> <val2> ... <valn>)
```
<br>

### [ xor ] Exclusivo

Retorna *t* se exatamente um dos argumentos for verdadeiro, caso contrário retorna *nil*.

```
(xor <val1> <val2>)
```
<br>