;; Ex1. Usando IF para verificar múltiplas condições e operações aninhadas

(setq resultado (if (and (> (sqrt 49) 5) (= (* 2 3) 6))
                   (if (= (+ 4 4) 8)
                       "Todas as condições são verdadeiras."
                       "A condição aninhada falhou.")
                   "A primeira condição falhou."))

(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Usando COND para criar uma sequência complexa de verificações com operações matemáticas

(setq resultado (cond ((and (oddp 15) (evenp 10)) "15 é ímpar e 10 é par.")
                      ((and (oddp 15) (oddp 5)) "Ambos 15 e 5 são ímpares.")
                      ((> (expt 2 3) 5) "2 elevado a 3 é maior que 5.")
                      (t "Nenhuma das condições acima foi atendida.")))

(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Usando WHEN para verificar várias condições antes de executar uma operação em uma lista

(setq numeros '(2 4 6 8 10))
(setq soma 0)

(when (every #'evenp numeros)
  (setq soma (reduce #'+ numeros))
  (setq resultado (format nil "A soma de todos os números pares é: ~A" soma)))

(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Usando UNLESS com operações aninhadas e variáveis para verificação de condições múltiplas

(setq numero 8)

(unless (and (= (mod numero 2) 0) (< numero 5))
  (setq resultado (format nil "~A é par, mas não é menor que 5." numero)))

(format t "Exercício 4: ~A ~%" resultado)
(terpri)


;; Ex5. Usando CASE com múltiplos valores por caso e verificações de caracteres

(setq caractere #\A)
(setq resultado (case caractere
                  (#\A #\E #\I #\O #\U "O caractere é uma vogal maiúscula.")
                  (#\a #\e #\i #\o #\u "O caractere é uma vogal minúscula.")
                  ((#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9) "O caractere é um dígito.")
                  (t "O caractere é uma consoante ou um símbolo.")))
                  
(format t "Exercício 5: ~A ~%" resultado)
(terpri)
