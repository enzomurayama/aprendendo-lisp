;; Faça uma implementação de uma macro 

;; Escreva a macro a-menos-que, que recebe um teste e um conjunto de expressões. Esta forma especial avalia o teste e, quando este é falso, 
;; avalia sequencialmente as expressões, devolvendo o valor da última. Se o teste é verdade, a forma retorna nil sem avaliar mais nada.

(defmacro a-menos-que (teste &body expressoes)
    `(if (not ,teste)         ;; Verifica se o teste é falso
         (progn ,@expressoes) ;; Avalia sequencialmente as expressões
         nil))                ;; Retorna NIL se o teste for verdadeiro

