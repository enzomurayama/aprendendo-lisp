;; Ex1. Como criar um array unidimensional com 7 posições e inicializar todos os elementos como 0? Qual é o tamanho do array?

(setq meu-array (make-array 7 :initial-element 0))

(format t "Exercício 1 - Tamanho do array: ~A ~%" (length meu-array))
(terpri)


;; Ex2. Como criar um array de tamanho 5 com valores 10, 20, 30, 40, 50 e acessar o terceiro elemento?

(setq meu-array (make-array 5 :initial-contents '(10 20 30 40 50)))

(format t "Exercício 2 - Terceiro elemento: ~A ~%" (aref meu-array 2))
(terpri)


;; Ex3. Como alterar o valor na segunda posição de um array de 0 para 99?

(setq meu-array (make-array 5 :initial-element 0))
(setf (aref meu-array 1) 99)

(format t "Exercício 3 - Array atualizado: ~A ~%" meu-array)
(terpri)


;; Ex4. Como criar uma matriz 3x3 com todos os elementos inicializados como 1 e acessar o elemento da segunda linha e terceira coluna?

(setq minha-matriz (make-array '(3 3) :initial-element 1))

(format t "Exercício 4 - Elemento [1,2]: ~A ~%" (aref minha-matriz 1 2))
(terpri)


;; Ex5. Como criar uma matriz 2x2 com os valores [[1, 2], [3, 4]] e calcular a soma de todos os elementos?

(setq minha-matriz (make-array '(2 2) :initial-contents '((1 2) (3 4))))

(setq soma 0)
(dotimes (i 2)
  (dotimes (j 2)
    (setq soma (+ soma (aref minha-matriz i j)))))

(format t "Exercício 5 - Soma dos elementos: ~A ~%" soma)
(terpri)
