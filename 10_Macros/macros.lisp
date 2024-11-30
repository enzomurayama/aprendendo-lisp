;; Ex1. Macro que adiciona automaticamente logs a determinadas funções.

(defmacro with-logging (message &body body)
  `(progn
     (print (concatenate 'string "Log: " ,message))
     ,@body))

(format t "Exercício 1: ~A ~%" (with-logging "Iniciando cálculo" (print (+ 2 3))))
(terpri)


;; Ex2. Macro para verificar se um número é positivo

(defmacro verificar-positivo (x)
  `(if (> ,x 0)
       "É positivo."
       "Não é positivo."))

(format t "Exercício 2 - 5 é positivo? ~A ~%" (verificar-positivo 5))
(format t "Exercício 2 - -3 é positivo? ~A ~%" (verificar-positivo -3))
(terpri)


;; Ex3. Macro para calcular o quadrado de um número

(defmacro quadrado (x)
  `(* ,x ,x))

(format t "Exercício 3 - O quadrado de 4 é: ~A ~%" (quadrado 4))
(format t "Exercício 3 - O quadrado de 7 é: ~A ~%" (quadrado 7))
(terpri)


;; Ex4. Macro para concatenar duas listas

(defmacro concatenar (lista1 lista2)
  `(append ,lista1 ,lista2))

(format t "Exercício 4 - Concatenando '(1 2)' e '(3 4)': ~A ~%" (concatenar '(1 2) '(3 4)))
(format t "Exercício 4 - Concatenando '()' e '(5 6)': ~A ~%" (concatenar '() '(5 6)))
(terpri)
