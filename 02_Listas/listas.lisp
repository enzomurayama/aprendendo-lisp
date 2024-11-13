;; Ex1. Extraia o primeiro elemento de '(10 20 30 40).

(format t "Exercício 1 - Primeiro elemento de '(10 20 30 40) é ~A ~%" (car '(10 20 30 40)))
(terpri)


;; Ex2. Extraia a cauda de '(5 6 7 8).

(format t "Exercício 2 - Cauda de '(5 6 7 8): ~A ~%" (cdr '(5 6 7 8)))
(terpri)


;; Ex3. Encontre o último elemento de '(apple banana cherry).

(format t "Exercício 3 - Último elemento de '(apple banana cherry): ~A ~%" (last '(apple banana cherry)))
(terpri)


;; Ex4. Crie uma nova lista '(0 1) e faça a concatenação com '(2 3 4 5).

(setq new_list '(0 1))
(format t "Exercício 4: ~A ~%" (append new_list '(2 3 4 5)))
(terpri)


;; Ex5. Elimine as ocorrências de 2 da lista '(0 1 2 3 2 4 4 5 2 2 3 2 5) e verifique seu tamanho antes e depois da remoção.

(setq tam_antes (length '(0 1 2 3 2 4 4 5 2 2 3 2 5)))
(setq tam_depois (length (remove 2 '(0 1 2 3 2 4 4 5 2 2 3 2 5))))
(format t "Exercício 5 - Tamanho antes: ~A | Tamanho depois: ~A ~%" tam_antes tam_depois)
(terpri)


;; Ex6. Extraia o quarto elemento de '(w x y z), reverta a mesma lista e verifique o quarto elemento novamente.

(format t "Exercício 6 - 4º elemento: ~A | 4º elemento após reversão: ~A ~%" (nth 3 '(w x y z)) (nth 3 (reverse '(w x y z))))
(terpri)


;; Ex7. Dada a lista '((a b) (c d) (e f)), use uma combinação de car e cdr para extrair 'c.

(format t "Exercício 7: ~A ~%" (caadr '((a b) (c d) (e f))))
(terpri)


;; Ex8. Usando apenas cons, crie a lista '(a b c d).

(setq nova_lista (cons 'a (cons 'b (cons 'c (cons 'd nil)))))
(format t "Exercício 8: ~A ~%" nova_lista)
(terpri)