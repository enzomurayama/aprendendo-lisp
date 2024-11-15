;; Ex1. Função para calcular o fatorial de um número

(defun fatorial (n)
  (if (<= n 1)
      1
      (* n (fatorial (- n 1)))))

(format t "Exercício 1 - Fatorial de 5 é ~A ~%" (fatorial 5))
(terpri)


;; Ex2. Função para retornar o maior valor de uma lista

(defun maior (lista)
  (let ((maximo (car lista)))
    (loop for x in (cdr lista) do
          (if (> x maximo)
              (setq maximo x)))
    maximo))

(format t "Exercício 2 - O maior valor da lista é ~A ~%" (maior '(1 4 3 7 2)))
(terpri)


;; Ex3. Função para calcular a soma dos quadrados de uma lista

(defun soma-quadrados (lista)
  (let ((soma 0))
    (loop for x in lista do
          (setq soma (+ soma (* x x))))
    soma))

(format t "Exercício 3 - A soma dos quadrados é ~A ~%" (soma-quadrados '(1 2 3 4)))
(terpri)


;; Ex4. Função para concatenar uma lista de strings

(defun concatenar-strings (lista)
  (let ((resultado ""))
    (loop for str in lista do
          (setq resultado (concatenate 'string resultado str)))
    resultado))

(format t "Exercício 4 - String concatenada: ~A ~%" (concatenar-strings '("Olá" " " "Mundo" "!")))
(terpri)


;; Ex5. Função para verificar se uma lista está ordenada em ordem crescente

(defun ordenada (lista)
  (if (or (null lista) (null (cdr lista)))  ; Lista com 0 ou 1 elemento, considerada ordenada
      t
      (loop for i from 0 to (- (length lista) 2) do
            (if (>= (nth i lista) (nth (1+ i) lista)) ; Se encontrar um elemento maior ou igual ao próximo
                (return-from ordenada nil)))) ; Sai da função e retorna NIL
  t)  ; Se não houver nenhuma violação, a lista é ordenada

(format t "Exercício 5 - A lista ~A está ordenada? ~A ~%" '(1 2 3 4 5) (ordenada '(1 2 3 4 5))) ; Deve retornar T
(format t "Exercício 5 - A lista ~A está ordenada? ~A ~%" '(1 3 2 4 5) (ordenada '(1 3 2 4 5))) ; Deve retornar NIL
(terpri)




