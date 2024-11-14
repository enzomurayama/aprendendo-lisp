# 🔀 Condicionais
As estruturas de tomada de decisão exigem que o programador especifique uma ou mais **condições a serem avaliadas** ou testadas pelo programa, juntamente com uma instrução ou **instruções a serem executadas** se a condição for determinada como verdadeira e, opcionalmente, outras instruções a serem executadas se a condição for falsa.

<br>

### [ if ] Condicional simples

Avalia a condição e executa ação-then se for verdadeira; caso contrário, executa ação-else.

```
(if <condição> <ação-then> <ação-else>)
```
<br>

### [ cond ] Condicional múltiplo

Avalia cada condição em sequência e executa a ação associada à primeira condição verdadeira.

```
(cond <condição1> <ação1> <condição2> <ação2> ... <condiçãon> <açãon>)
```
<br>

### [ when ] Condicional "then"

Executa a ação ou ações se a condição for **verdadeira**; não possui parte else.

```
(when <condição> <ação-then1> <ação-then2> ... <ação-thenn>)
```
<br>

### [ unless ] Condicional "not-then"

Executa ação se a condição for **falsa**; não possui parte else.

```
(unless <condição> <ação-then1> <ação-then2> ... <ação-thenn>)
```
<br>

### [ case ] Switch

É uma estrutura condicional que permite selecionar uma ação a partir de diferentes valores de uma expressão, semelhante a uma estrutura de switch em outras linguagens. Ele avalia uma expressão e executa a ação correspondente ao valor da expressão, sem necessidade de verificar explicitamente as condições.

```
(case <expressão>
    (valor1 ação1)
    (valor2 ação2)
    ...
    (otherwise ação-padrão))
```
<br>