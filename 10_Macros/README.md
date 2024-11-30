# 🔩 Macros
Macros em Lisp são uma poderosa ferramenta de metaprogramação, permitindo criar novos comportamentos na linguagem ao manipular diretamente as estruturas de código. Elas são usadas para gerar ou transformar código durante o processo de compilação ou interpretação, antes que ele seja executado.

Macros são definidas usando a função especial **defmacro**. Aqui está um exemplo básico:
```
(defmacro macro-name (parameter-list))
    "Optional documentation string."
    body-form

(defmacro macro-name (condicao &body corpo)
  `(if ,condicao
       (progn ,@corpo)))
```

**quasequote (`):** Permite construir expressões sem avaliá-las imediatamente. <br>
**,:** Avalia uma expressão dentro de um quasequote. <br>
**,@:** Desestrutura e insere os elementos de uma lista dentro de um quasequote.