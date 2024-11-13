;; Ex1. Calcule a hipotenusa de um triângulo com catetos de 3 e 4 

(setq result (sqrt (+ (expt 3 2) (expt 4 2))) ) 

(format t "Exercício 1: ~A ~%" result)
(terpri)


;; Ex2. Calcule o volume de uma esfera com um raio fornecido (ex: 3) e arredonde o resultado

(let ((radius 3) (pi 3.14))
  (format t "Exercício 2 - Volume da esfera: ~A ~%" (round (* (/ 4 3) pi (expt radius 3)))))

(terpri)


;; Ex3. Encontre a hipotenusa e o perímetro de um triângulo retângulo com catetos 7 e 24

(let ((a 7) (b 24))
  (let ((h (sqrt (+ (expt a 2) (expt b 2)))))
    (format t "Exercício 3 - Hipotenusa: ~A | Perímetro: ~A ~%" h (+ a b h))))

(terpri)


;; Ex4. Calcule a raiz cúbica aproximada de um número usando exponenciação: 27

(format t "Exercício 4: ~A ~%" (expt 27 (/ 1 3)))
(terpri)


;; Ex5. Encontre a média quadrática de três números: 3, 6, 9

(let ((a 3) (b 6) (c 9))
  (format t "Exercício 5: ~A ~%" (sqrt (/ (+ (expt a 2) (expt b 2) (expt c 2)) 3)))) 

(terpri)