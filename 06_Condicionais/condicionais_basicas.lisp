;; Ex1. Use IF para verificar se uma condição é verdadeira e fornecer uma resposta.

(setq resultado (if (= (+ 3 7) 10)
                   "A condição é verdadeira."
                   "A condição é falsa."))
                   
(format t "Exercício 1: ~A ~%" resultado)
(terpri)


;; Ex2. Use COND para verificar múltiplas condições sequenciais.

(setq resultado (cond ((> 10 20) "10 é maior que 20.")
                      ((= 5 5) "5 é igual a 5.")
                      (t "Nenhuma das condições anteriores é verdadeira.")))

(format t "Exercício 2: ~A ~%" resultado)
(terpri)


;; Ex3. Use WHEN para executar uma ação somente se uma condição for verdadeira.

(setq resultado nil)
(when (< 5 10)
  (setq resultado "A condição é verdadeira."))

(format t "Exercício 3: ~A ~%" resultado)
(terpri)


;; Ex4. Use UNLESS para executar uma ação somente se uma condição for falsa.

(setq resultado nil)
(unless (= (* 2 3) 5)
  (setq resultado "A condição é falsa, então essa mensagem é exibida."))

(format t "Exercício 4: ~A ~%" resultado)
(terpri)


;; Ex5. Use CASE para selecionar uma ação com base em uma expressão.

(setq valor 3)
(setq resultado (case valor
                  (1 "O valor é 1.")
                  (2 "O valor é 2.")
                  (3 "O valor é 3.")
                  (t "O valor é desconhecido.")))
                  
(format t "Exercício 5: ~A ~%" resultado)
(terpri)
