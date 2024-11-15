;; Ex1. Função recursiva para calcular a soma de uma lista

(defun soma-lista (lista)
  (if (null lista)
      0
      (+ (car lista) (soma-lista (cdr lista)))))

(format t "Exercício 1 - A soma da lista é ~A ~%" (soma-lista '(1 2 3 4 5)))
(terpri)


;; Ex2. Função recursiva para contar o número de elementos de uma lista

(defun contar-elementos (lista)
  (if (null lista)
      0
      (+ 1 (contar-elementos (cdr lista)))))

(format t "Exercício 2 - O número de elementos na lista é ~A ~%" (contar-elementos '(1 2 3 4 5)))
(terpri)


;; Ex3. Função recursiva para inverter uma lista

(defun inverter-lista (lista)
  (if (null lista)
      nil
      (append (inverter-lista (cdr lista)) (list (car lista)))))

(format t "Exercício 3 - Lista invertida: ~A ~%" (inverter-lista '(1 2 3 4 5)))
(terpri)


;; Ex4. Função recursiva para calcular o n-ésimo número de Fibonacci

(defun fibonacci (n)
  (if (<= n 1)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(format t "Exercício 4 - O 6º número de Fibonacci é ~A ~%" (fibonacci 6))
(terpri)


