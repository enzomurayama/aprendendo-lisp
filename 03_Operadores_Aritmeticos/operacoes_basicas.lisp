(defvar resultado 0)

;; Ex1. Soma de três números

(setq resultado (+ 5 10 15)) 
(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Subtração de dois números

(setq resultado (- 20 5)) 
(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Multiplicação de quatro números
 
(setq resultado (* 2 3 4 5)) 
(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Divisão de três números
 
(setq resultado (/ 40 8 5)) 
(format t "Exercício 4: ~A ~%" resultado)
(terpri)


;; Ex5. Calcular a raiz quadrada de um número

(setq resultado (sqrt 49)) 
(format t "Exercício 5: ~A ~%" resultado)
(terpri)


;; Ex6. Exponencial: elevar 3 à potência de 4

(setq resultado (expt 3 4) ) 
(format t "Exercício 6: ~A ~%" resultado)
(terpri)


;; Ex7. Logaritmo natural e na base 10 do número 20

(format t "Exercício 7 - log natural: ~A | log base 10: ~A ~%" (log 20) (log 20 10))
(terpri)


;; Ex8. Calcular o resto e o módulo da divisão de -17 por 4

(format t "Exercício 8 - Resto: ~A | Mod: ~A ~%" (rem -17 4) (mod -17 4))
(terpri)


;; Ex9. Calcular seno de π/4, cosseno de π/3 e tangente de π/6. Defina π como 3.14

(defconstant pi 3.14)

(setq seno (sin (/ pi 4))) 
(setq cosseno (cos (/ pi 3))) 
(setq tangente (tan (/ pi 6))) 

(format t "Exercício 9 - sen: ~A | cos: ~A | tg: ~A ~%" seno cosseno tangente)
(terpri)