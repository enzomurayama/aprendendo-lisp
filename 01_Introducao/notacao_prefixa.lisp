;; Ex1. Escreva uma expressão para calcular o valor de 2 * (3 + 4) - 5

(setq ex1 (- (* 2 (+ 3 4)) 5))

(format t "Exercício 1: ~D ~%" ex1)
(terpri)

;; Ex2. Escreva uma expressão para calcular o valor de (7 + 5) * 3 - 4

(setq ex2 (- (* (+ 7 5) 3) 4))

(format t "Exercício 2: ~D ~%" ex2)
(terpri)

;; Ex3. Use notação prefixa para calcular a média de três números: 15, 20 e 25.

(setq ex3 (/ (+ 15 20 25) 3))

(format t "Exercício 3: ~D ~%" ex3)
(terpri)
