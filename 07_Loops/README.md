# 🔁 Loops
Em Lisp, loops e iterações podem ser implementados com várias construções. Embora Lisp seja mais conhecido pelo uso de recursão, 
ele também fornece operadores para loops, especialmente nas versões mais modernas da linguagem como Common Lisp.

<br>

### [ loop ] Laço genérico

Construção geral para repetição. Suporta iterações complexas e condições, com várias palavras-chave opcionais que tornam a construção mais intuitiva, como for, from, to, do.

```
(loop [palavras-chave e expressões] 
    corpo)


(loop for i from 0 to 4 do 
    (print i))
```
<br>

### [ do ] Iteração genérica

Estrutura genérica para iteração, permitindo variáveis de controle inicializadas e atualizadas a cada passo.

```
(do ((var1 init1 step1)
     (var2 init2 step2)
     ...)
    (condição-final [resultado]) 
  corpo)


(do ((i 0 (+ i 1)))  ; i inicia em 0 e é incrementado em 1
    ((>= i 5))       ; loop para quando i >= 5
  (print i))
```

var1, init1, step1: inicialização, incremento ou atualização das variáveis. <br>
condição-final: condição de saída do loop. <br>
resultado (opcional): valor retornado ao final.

<br>

### [ do* ] Iteração dependente

Similar ao do, mas as variáveis de controle são inicializadas e atualizadas em sequência, permitindo dependência entre elas.

```
(do* ((var1 init1 step1)
      (var2 init2 step2)
      ...)
     (condição-final [resultado]) 
  corpo)


(do* ((i 0 (+ i 1)) 
      (j 0 (+ j i))) ; j depende do valor atualizado de i
     ((>= i 5)) 
  (print (list i j)))
```

var1, init1, step1: inicialização, incremento ou atualização das variáveis. <br>
condição-final: condição de saída do loop. <br>
resultado (opcional): valor retornado ao final.

<br>

### [ dotimes ] Iteração limitada

Itera um número fixo de vezes. Executa o corpo do loop para valores de uma variável entre 0 e um número dado.

```
(dotimes (var limite [resultado]) 
    corpo)


(dotimes (i 5)
  (print i))
```

var: variável iterativa. <br>
limite: número de iterações. <br>
resultado (opcional): valor retornado após o loop.

<br>

### [ dolist ] Iteração sobre lista

Itera sobre cada elemento de uma lista. Executa o corpo do loop para cada item da lista.

```
(dolist (var lista [resultado]) 
    corpo)


(dolist (item '(a b c d))
  (print item))
```

var: variável que recebe cada elemento da lista. <br>
lista: lista a ser iterada. <br>
resultado (opcional): valor retornado após o loop.

<br>

---

<br>

### Cláusulas do `loop` em Common Lisp

| **Categoria**              | **Cláusula**       | **Descrição**                                                                                  | **Exemplo**                                                                 |
|----------------------------|--------------------|------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| **Controle de iteração**   | `for` / `as`      | Define as variáveis e os valores a serem iterados.                                             | `(loop for i from 1 to 10)`                                                |
|                            | `while`           | Continua a iteração enquanto a condição for verdadeira.                                        | `(loop for i from 1 while (< i 5))`                                        |
|                            | `until`           | Continua a iteração até que a condição se torne verdadeira.                                    | `(loop for i from 1 until (> i 5))`                                        |
|                            | `repeat`          | Repete um bloco de código um número fixo de vezes.                                             | `(loop repeat 3 do (print "Olá"))`                                         |
| **Acumulação**             | `sum`             | Soma os valores especificados.                                                                | `(loop for i from 1 to 10 sum i)`                                          |
|                            | `count`           | Conta o número de vezes que uma condição é verdadeira.                                         | `(loop for i from 1 to 10 count (evenp i))`                                |
|                            | `maximize`        | Retorna o maior valor encontrado durante a iteração.                                           | `(loop for i from 1 to 10 maximize i)`                                     |
|                            | `minimize`        | Retorna o menor valor encontrado durante a iteração.                                           | `(loop for i from 1 to 10 minimize i)`                                     |
|                            | `collect`         | Cria uma lista com os valores gerados na iteração.                                             | `(loop for i from 1 to 5 collect i)`                                       |
|                            | `append`          | Junta listas geradas durante a iteração.                                                      | `(loop for lst in '((1 2) (3 4)) append lst)`                              |
|                            | `nconc`           | Concatena listas geradas, modificando-as (não cria novas listas).                              | `(loop for lst in '((1 2) (3 4)) nconc lst)`                               |
|                            | `into`            | Define o destino da acumulação (em uma variável).                                              | `(loop for i from 1 to 5 collect i into resultado finally (return resultado))` |
| **Execução de ações**      | `do`              | Executa um bloco de código arbitrário.                                                        | `(loop for i from 1 to 5 do (print i))`                                    |
|                            | `return`          | Interrompe o loop e retorna um valor.                                                         | `(loop for i from 1 to 5 if (= i 3) return "Parar no 3")`                  |
| **Condicionais**           | `if` / `when`     | Executa ações condicionalmente durante a iteração.                                             | `(loop for i from 1 to 5 if (evenp i) collect i)`                          |
|                            | `unless`          | Executa ações quando uma condição for falsa.                                                  | `(loop for i from 1 to 5 unless (evenp i) collect i)`                      |
| **Manipulação de variáveis** | `with`           | Declara variáveis locais para serem usadas no corpo do loop.                                   | `(loop with x = 10 for i from 1 to 3 collect (+ i x))`                     |
| **Iteração em coleções**   | `in` / `on`       | Itera sobre os elementos de uma lista ou sobre suas sublistas (com `on`).                      | `(loop for x in '(1 2 3) collect x)`                                       |
|                            | `across`          | Itera sobre os elementos de um vetor.                                                         | `(loop for x across #(1 2 3) collect x)`                                   |
|                            | `being`           | Itera sobre chaves, valores ou entradas de tabelas de hash.                                    | `(loop for k being the hash-keys of my-hash-table collect k)`              |
| **Finalização**            | `finally`         | Executa um bloco de código ou retorna valores no final do loop, após todas as iterações.       | `(loop for i from 1 to 5 collect i finally (return "Fim"))`                  |
