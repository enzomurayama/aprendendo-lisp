;; Ex1. Comparação de igualdade e diferença entre expressões aritméticas usando = e /=

(setq resultado (and (= (+ 3 7) 10) (/= (- 20 10) 5)))
(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Comparação de maior e menor entre expressões envolvendo multiplicação e divisão usando > e <

(setq resultado (and (> (* 3 3) 5) (< (/ 10 2) 6)))
(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Comparação de maior ou igual e menor ou igual com expressões envolvendo somas e multiplicações usando >= e <=

(setq resultado (and (>= (+ 2 5) (* 2 3)) (<= (* 4 2) 9)))
(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Uso de max para comparar resultados de expressões matemáticas e min para encontrar o menor valor

(setq resultado (and (= (max 5 8 3) 8) (min 10 5 7) 5))
(format t "Exercício 4: ~A ~%" resultado)
(terpri)


;; Ex5. Comparação de igual e maior ou igual entre números com resultados de operações aritméticas

(setq resultado (and (equal (+ 5 10) 15) (>= 20 (- 30 10))))
(format t "Exercício 5: ~A ~%" resultado)
(terpri)


;; Ex6. Comparação de igualdade estrutural de listas e referência de símbolo com eq

(setq resultado (and (equal '(1 2 3) '(1 2 3)) (eq 'symbol 'symbol)))
(format t "Exercício 6: ~A ~%" resultado)
(terpri)
