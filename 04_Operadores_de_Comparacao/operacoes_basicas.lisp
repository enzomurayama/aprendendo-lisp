;; Ex1. Comparação de igualdade entre duas expressões usando =

(setq resultado (= (+ 2 3) (* 1 5)))
(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Comparação de diferença entre duas operações matemáticas usando /=

(setq resultado (/= (+ 5 5) (* 2 3)))
(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Comparação de maior que entre duas expressões numéricas usando >

(setq resultado (> (* 3 4) (- 20 5)))
(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Comparação de maior ou igual entre duas expressões envolvendo operações aritméticas usando >=

(setq resultado (>= (+ 10 5) (* 3 5)))
(format t "Exercício 4: ~A ~%" resultado)
(terpri)


;; Ex5. Comparação de menor que entre resultados de expressões matemáticas usando <

(setq resultado (< (/ 15 3) (* 2 3)))
(format t "Exercício 5: ~A ~%" resultado)
(terpri)


;; Ex6. Comparação de menor ou igual entre duas expressões usando <=

(setq resultado (<= (+ 8 2) (* 2 5)))
(format t "Exercício 6: ~A ~%" resultado)
(terpri)


;; Ex7. Uso de max para encontrar o maior valor entre várias expressões

(setq resultado (max 10 (+ 3 7) (* 2 5) (/ 50 5)))
(format t "Exercício 7: ~A ~%" resultado)
(terpri)


;; Ex8. Uso de min para encontrar o menor valor entre várias expressões

(setq resultado (min 15 (- 10 3) (* 2 4) (/ 20 2)))
(format t "Exercício 8: ~A ~%" resultado)
(terpri)


;; Ex9. Comparação de igualdade estrutural com listas usando equal

(setq resultado (equal '(1 2 3) '(1 2 3)))
(format t "Exercício 9: ~A ~%" resultado)
(terpri)


;; Ex10. Comparação flexível de igualdade entre uma string maiúscula e uma minúscula usando equalp

(setq resultado (equalp "Hello" "hello")) ; Ignora case
(format t "Exercício 10: ~A ~%" resultado)
(terpri)


;; Ex11. Comparação de referência entre símbolos usando eq

(setq resultado (eq 'a 'a)) 
(format t "Exercício 11: ~A ~%" resultado)
(terpri)
