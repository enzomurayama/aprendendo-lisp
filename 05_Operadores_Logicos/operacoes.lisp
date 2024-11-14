;; Ex1. Use AND para verificar se várias são condições verdadeiras. Obtenha T

(setq resultado (and (= (* 2 3) 6) (> (+ 5 5) 8) (< (- 15 5) 20))) 
(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Use OR para verificar se pelo menos uma das condições é verdadeira. Obtenha T

(setq resultado (or (= (* 4 2) 10) (< (/ 9 3) 4) (= (+ 1 1) 2)))  
(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Use XOR para verificar condições exclusivas. Obtenha T

(setq resultado (xor (= 3 3) (= 4 5)))  
(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Crie uma combinação complexa usando NOT, AND e OR. Obtenha T

(setq resultado (and (not (= (* 2 5) 11)) (or (> 7 3) (< 1 0))))  
(format t "Exercício 4: ~A ~%" resultado)
(terpri)