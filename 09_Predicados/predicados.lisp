;; Ex1. Função para verificar se um elemento é um átomo

(defun verificar-atom (x)
  (if (atom x)
      "É um átomo."
      "Não é um átomo."))

(format t "Exercício 1 - 'A' é um átomo? ~A ~%" (verificar-atom 'A))
(format t "Exercício 1 - '(1 2)' é um átomo? ~A ~%" (verificar-atom '(1 2)))
(terpri)


;; Ex2. Função para verificar se um elemento é uma lista ou a lista vazia

(defun listp-null (x)
  (if (and (listp x) (null x))
      "É a lista vazia."
      (if (listp x)
          "É uma lista não vazia."
          "Não é uma lista.")))

(format t "Exercício 2 - '()' é uma lista? ~A ~%" (listp-null '()))
(format t "Exercício 2 - '(1 2 3)' é uma lista? ~A ~%" (listp-null '(1 2 3)))
(format t "Exercício 2 - 'A' é uma lista? ~A ~%" (listp-null 'A))
(terpri)


;; Ex3. Função para verificar se um número é zero ou negativo

(defun zerop-minusp (x)
  (cond
    ((zerop x) "É zero.")
    ((minusp x) "É um número negativo.")
    (t "É um número positivo.")))

(format t "Exercício 3 - Verificar 0: ~A ~%" (zerop-minusp 0))
(format t "Exercício 3 - Verificar -3: ~A ~%" (zerop-minusp -3))
(format t "Exercício 3 - Verificar 5: ~A ~%" (zerop-minusp 5))
(terpri)


;; Ex4. Função para verificar se um número é par ou ímpar

(defun par-ou-impar (x)
  (if (evenp x)
      "É um número par."
      "É um número ímpar."))

(format t "Exercício 4 - 4 é par ou ímpar? ~A ~%" (par-ou-impar 4))
(format t "Exercício 4 - 7 é par ou ímpar? ~A ~%" (par-ou-impar 7))
(terpri)


;; Ex5. Função para verificar se um elemento é um número ou string

(defun numero-ou-string (x)
  (cond
    ((numberp x) "É um número.")
    ((stringp x) "É uma string.")
    (t "Não é um número nem uma string.")))

(format t "Exercício 5 - 10 é número ou string? ~A ~%" (numero-ou-string 10))
(format t "Exercício 5 - \"LISP\" é número ou string? ~A ~%" (numero-ou-string "LISP"))
(format t "Exercício 5 - 'A é número ou string? ~A ~%" (numero-ou-string 'A))
(terpri)


;; Ex6. Função para verificar se um número é inteiro ou decimal

(defun integer-float (x)
  (cond
    ((integerp x) "É um número inteiro.")
    ((floatp x) "É um número decimal (float).")
    (t "Não é um número.")))

(format t "Exercício 6 - 42 é inteiro ou decimal? ~A ~%" (integer-float 42))
(format t "Exercício 6 - 3.14 é inteiro ou decimal? ~A ~%" (integer-float 3.14))
(format t "Exercício 6 - 'A é inteiro ou decimal? ~A ~%" (integer-float 'A))
(terpri)


;; Ex7. Função para verificar se um elemento é um caractere

(defun ischaracter (x)
  (if (characterp x)
      "É um caractere."
      "Não é um caractere."))

(format t "Exercício 7 - #\\A é um caractere? ~A ~%" (ischaracter #\A))
(format t "Exercício 7 - 5 é um caractere? ~A ~%" (ischaracter 5))
(format t "Exercício 7 - \"C\" é um caractere? ~A ~%" (ischaracter "C"))
(terpri)


;; Ex8. Função para verificar se um elemento é uma lista ou um par cons

(defun iscons (x)
  (cond
    ((consp x) "É um par cons.")
    (t "Não é um par cons.")))

(format t "Exercício 8 - '(1 . 2) é par cons ou lista? ~A ~%" (iscons '(1 . 2)))
(format t "Exercício 8 - '(1 2 3) é par cons ou lista? ~A ~%" (iscons '(1 2 3)))
(format t "Exercício 8 - 42 é par cons ou lista? ~A ~%" (iscons 42))
(terpri)



