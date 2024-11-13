# 📋 Listas
Em Lisp, listas são um dos tipos de dados fundamentais e são frequentemente usadas para representar programas, dados e estruturas em geral. Elas são compostas por elementos que podem ser qualquer tipo de dado, como números, símbolos, ou outras listas. 

<br>

## 1. Criando uma lista
Podemos utilizar a chamada ***list*** para criar uma nova lista a partir de seus argumentos.

```
(list <agr1> <agr2> ... <agrn>)
```
<br>

## 2. Quote
É uma forma de evitar que uma expressão seja avaliada. Isso significa que, ao usar quote, você está dizendo ao Lisp para retornar exatamente o que foi escrito, sem realizar nenhuma avaliação sobre o que está dentro da expressão.

A forma mais comum de usar quote é para criar listas literais. Quando você coloca um apóstrofo ( ' ) antes de uma lista ou expressão, isso é equivalente a usar quote. Veja um exemplo:

```
(quote (1 2 3))

'(1 2 3)
```

Ambos retornam a lista **(1 2 3)** sem que o Lisp tente avaliar os elementos dentro da lista.

<br>

## 3. Funções comuns para manipulação de listas
Exemplos de algumas funções comuns para manipulação de listas. Lembrando que não estamos cobrindo todas que existem, mas as principais que estaremos utilizando.

<br>

### [ car | first ] Cabeça da lista

Retorna o primeiro elemento da lista.

```
(car '<lista>)
```
<br>

### [ cdr | rest ] Cauda da lista

Retorna o restante da lista, excluindo o primeiro elemento.

```
(cdr '<lista>)
```
<br>

### [ last ] Último da lista

Recebe uma lista e retorna uma lista contendo o último elemento.

```
(last '<lista>)
```
<br>

---

<br>

### [ cons ] Adiciona elemento

Adiciona um elemento no início de uma lista. Este elemento pode ser outra lista.

```
(cons <element> '<lista>)
```
<br>

### [ append ] Concatenação

Concatena duas ou mais listas.

```
(append '<lista1> '<lista2> ... '<listan>)
```
<br>

### [ remove ] Remoção

Remove todas as ocorrências de um elemento de uma lista.

```
(remove '<lista1> '<lista2> ... '<listan>)
```
<br>

### [ butlast ] Remove n elementos finais

Retorna uma cópia removendo os n elementos finais.

```
(butlast '<lista1> <n>)
```
<br>

---

<br>

### [ length ] Comprimento

Retorna o número de elementos de uma lista.

```
(length '<lista>)
```
<br>

### [ nth ] N-ésimo elemento

Retorna o elemento de uma lista no índice especificado (começando de 0).

```
(nth <n> '<lista>)
```
<br>

### [ member ] Membro

Verifica se um elemento está presente na lista. Retorna a sublista que começa com o elemento encontrado, ou nil se o elemento não for encontrado.

```
(member <element> '<lista>)
```
<br>

### [ reverse ] Reversão

Inverte a ordem dos elementos de uma lista.

```
(reverse '<lista1>)
```
<br>

## 4. Composição de *car* e *cdr*
As funções *car* e *cdr* e sua combinação permitem extrair qualquer elemento/membro específico de uma lista.

No entanto, sequências de funções *car* e *cdr* poderiam ser abreviadas concatenando a letra **'a para car'** e **'d para cdr'** dentro das letras **c** e **r**.

**Exemplos:** cxxr | cxxxr | cxxxxr | ...

```
(cadadr '(a (c d) (e f g))) ; Retorna d
```