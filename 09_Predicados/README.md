# 📝 Predicados
Predicados são funções que testam seus argumentos para algumas condições específicas e retornam nulo se a condição for falsa ou algum valor diferente de nulo se a condição for verdadeira. Os argumentos podem ser valores ou expressões que retornam um valor.

<br>

### [ atom ] Átomo

Verifica se o argumento é um átomo.

```
(atom <arg>)
```
<br>

### [ listp ] Lista

Verifica se o argumento é uma lista

```
(listp <arg>)
```
<br>

### [ null ] NULL

Verifica se o argumento é a lista vazia (NIL)

```
(null <arg>)
```
<br>

---

<br>

### [ numberp ] Número

Verifica se o argumento é um número.

```
(numberp <arg>)
```
<br>

### [ zerop ] Zero

Verifica se o número fornecido é igual a zero. Argumento deve ser número.

```
(zerop <arg>)
```
<br>

### [ minusp ] Negativo

Verifica se o número fornecido é negativo. Argumento deve ser número. 

```
(minusp <arg>)
```
<br>

### [ evenp ] Par

Verifica se o número fornecido é par. Argumento deve ser número. 

```
(evenp <arg>)
```
<br>

### [ oddp ] Ímpar

Verifica se o número fornecido é ímpar. Argumento deve ser número. 

```
(oddp <arg>)
```
<br>

---

<br>

### [ consp ] Cons

Verifica se o argumento é um par cons (não vazio).

```
(consp <arg>)
```
<br>

### [ stringp ] String

Verifica se o argumento é uma string.

```
(stringp <arg>)
```
<br>

### [ integerp ] Inteiro

Verifica se o argumento é um inteiro.

```
(integerp <arg>)
```
<br>

### [ floatp ] Float

Verifica se o argumento é um float.

```
(floatp <arg>)
```
<br>

### [ characterp ] Char

Verifica se o argumento é um character.

```
(characterp <arg>)
```
<br>

