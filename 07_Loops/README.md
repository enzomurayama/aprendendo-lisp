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

