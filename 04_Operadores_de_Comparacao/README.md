# ⚖️ Operadores de Comparação
Em Lisp, os operadores de comparação são usados para avaliar expressões e retornar valores booleanos (**t para verdadeiro e nil para falso**).

Nem todos os operadores de comparação em Lisp funcionam para todos os tipos de dados. Os seguintes funcionam apenas para comparação de números. Eles não podem ser usados com listas, strings ou símbolos e gerarão erro se aplicados a tipos incompatíveis.

<br>

### [ = ] Igualdade

Compara se todos os números são iguais.

```
(= <num1> <num2> ... <numn>)
```
<br>

### [ /= ] Desigualdade

Verifica se todos os números são diferentes.

```
(/= <num1> <num2> ... <numn>)
```
<br>

### [ > | >= ] Maior que

Compara se cada número é maior | maior ou igual que o próximo.

```
(> <num1> <num2> ... <numn>)
```
<br>

### [ < | <= ] Menor que

Compara se cada número é menor | menor ou igual que o próximo.

```
(< <num1> <num2> ... <numn>)
```
<br>

### [ max ] Máximo

Retorna o maior valor entre os números fornecidos.

```
(max <num1> <num2> ... <numn>)
```
<br>

### [ min ] Mínimo

Retorna o menor valor entre os números fornecidos.

```
(min <num1> <num2> ... <numn>)
```
<br>

---

<br>

Os seguintes, funcionam para mais tipos.

### [ equal ] Igualdade

Verifica se dois valores (listas, strings, números) são estruturalmente iguais. A ordem e tipo dos elementos importa.

```
(equal <val1> <val2>)
```
<br>

### [ equalp ] Igualdade flexível

Compara valores de forma mais flexível, ignorando diferenças de tipo entre números e case em strings:

```
(equalp <val1> <val2>)
```
<br>

### [ eq ] Igualdade na memória

Verifica se dois objetos referenciam o mesmo objeto na memória. Usado principalmente para símbolos.

```
(eq <val1> <val2>)
```
<br>