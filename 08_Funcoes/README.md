# 🛠 Funções
Em Lisp, funções são um dos principais pilares da linguagem e podem ser definidas e usadas de maneiras muito flexíveis. Aqui estão alguns conceitos chave sobre funções em Lisp:

<br>

## Definindo funções
As funções podem ser definidas usando a macro **defun**. A sintaxe básica é:
```
(defun nome-da-funcao (parametros)
    "String de documetação opcional"
    <corpo-funcao>)
```

**nome-da-funcao** é o nome da função. <br>
**parametros** é a lista dos parâmetros que a função receberá. <br>
O bloco de código após os parâmetros é a implementação da função, e o valor da última expressão é retornado como o valor da função.

<br>

## Funções recursivas
Lisp é muito eficiente em lidar com funções recursivas, e elas são amplamente usadas. A recursão é uma maneira comum de realizar iteração em Lisp.

Exemplo de uma função recursiva que calcula o fatorial de um número:

```
(defun fatorial (n)
  (if (<= n 1)
      1
      (* n (fatorial (- n 1)))))
```

<br>

## Funções de ordem superior
Funções de ordem superior são aquelas que podem receber outras funções como argumentos e/ou retornar funções como resultados. Esse conceito é fundamental em Lisp, onde funções são tratadas como cidadãos de primeira classe, podendo ser manipuladas como quaisquer outros valores.

Exemplo de uma função de ordem superior:

```
;; Função de ordem superior que aplica uma função a cada elemento de uma lista
(defun aplicar-a-lista (funcao lista)
  (if (null lista)  ; Caso base: lista vazia retorna lista vazia
      nil
      (cons (funcall funcao (car lista))  ; Aplica a função ao primeiro elemento
            (aplicar-a-lista funcao (cdr lista))))) ; Continua com o resto da lista


;; Função que será usada como argumento
(defun incrementar (x)
  (+ x 1))


(format t "Lista original: ~A~%" '(1 2 3 4 5))
(format t "Lista incrementada: ~A~%" (aplicar-a-lista #'incrementar '(1 2 3 4 5)))
```

<br>

## Funções lambda
Em Lisp, uma função lambda é uma maneira de criar funções anônimas de forma dinâmica. Elas são úteis quando você precisa de uma função temporária ou local, sem a necessidade de definí-la com um nome formal. A palavra-chave lambda é usada para criar essas funções.

```
(lambda (parâmetros) corpo-da-função)
```
