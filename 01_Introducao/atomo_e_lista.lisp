;; Ex1. Crie uma lista chamada student-info que contenha seu nome (string), idade (número) e uma lista com três disciplinas que você está cursando.

(defvar student-info '("SeuNome" 20 ("Disciplina1" "Disciplina2" "Disciplina3")))

(format t "Exercício 1: ~A ~%" student-info)
(terpri)


;; Ex2. Crie uma lista que contenha três números, duas strings e uma sublista com duas palavras. Salve-a em uma variável global chamada my-list.

(defvar my-list '(1 2 3 "Hello" "Lisp" ("nested" "list")))

(format t "Exercício 2: ~A ~%" my-list)
(terpri)


;; Crie uma lista chamada mixed-list que contenha um número, uma string, uma lista aninhada com duas strings e uma lista vazia.

(defvar mixed-list '(42 "Isso é uma string" ("texto1" "texto2") ()))

(format t "Exercício 3: ~A ~%" mixed-list)
(terpri)

