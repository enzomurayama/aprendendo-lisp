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