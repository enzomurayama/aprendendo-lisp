;; Ex1. Use LOOP para iterar e acumular o resultado de uma soma de números pares entre 1 e 10.

(setq resultado (loop for i from 1 to 10
                      when (evenp i)
                      sum i))

(format t "Exercício 1 - A soma dos números pares entre 1 e 10 é: ~A ~%" resultado)
(terpri)


;; Ex2. Use DO para iterar até que uma condição seja atingida e calcular o fatorial de 5.

(setq resultado (do ((n 5 (1- n))
                     (fatorial 1 (* fatorial n)))
                    ((= n 1) fatorial)))

(format t "Exercício 2 - O fatorial de 5 é: ~A ~%" resultado)
(terpri)


;; Ex3. Use DO* para calcular o produto acumulado de números ímpares entre 1 e 7.

(setq resultado (do* ((n 1 (+ n 2))
                      (produto 1 (* produto n)))
                     ((>= n 7) produto)))

(format t "Exercício 3 - O produto dos números ímpares entre 1 e 7 é: ~A ~%" resultado)
(terpri)


;; Ex4. Use DOTIMES para iterar sobre índices de um vetor e calcular a soma de seus elementos.

(setq vetor #(1 2 3 4 5))
(setq resultado 0)

(dotimes (i (length vetor) resultado)
  (setq resultado (+ resultado (aref vetor i))))

(format t "Exercício 4 - A soma dos elementos do vetor #(1 2 3 4 5) é: ~A ~%" resultado)
(terpri)


;; Ex5. Use DOLIST para iterar sobre uma lista e encontrar o maior número. 

(setq lista '(4 7 2 9 5))
(setq maior -1)

(dolist (elemento lista maior)
  (when (> elemento maior)
    (setq maior elemento)))

(format t "Exercício 5 - O maior número na lista '(4 7 2 9 5)' é: ~A ~%" maior)
(terpri)


