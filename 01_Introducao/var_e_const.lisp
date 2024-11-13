;; Ex1. Defina uma variável global chamada fav-color e atribua a ela a string "blue". Em seguida, altere o valor para "green".

(defvar fav-color "blue")
(setq fav-color "green")

(format t "Exercício 1: ~A ~%" fav-color)
(terpri)


;; Ex2. Defina uma variável global a com o valor 5 e b com o valor 3. Em seguida, calcule a soma de a e b e armazene o resultado em uma nova variável sum.

(defvar a 5)
(defvar b 3)
(setq sum (+ a b)) 

(format t "Exercício 2: ~D ~%" sum)
(terpri)


;; Ex3. Defina uma constante chamada max-students com o valor 30. Verifique se a constante está definida.

(defconstant max-students 30)

(format t "Exercício 3: ~A ~%" (boundp 'max-students))
(terpri)


;; Ex4. Defina uma variável local r. Calcule a área de um círculo de raio r, onde o usuário deve inserir seu valor.
;; Considere pi uma constante de valor 3.14

(defconstant pi 3.14)

(format t "Insira o valor do raio do círculo: ")

(let ((r (read)))
  (setq area (* pi (* r r))))

(format t "Exercício 4 - Área do círculo: ~F ~%" area)
(terpri)
