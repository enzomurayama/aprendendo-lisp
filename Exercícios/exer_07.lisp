;; QUESTÃO DE PROVA

;; Escreva uma função em LISP que, dada uma lista de valores numéricos, calcule uma lista 
;; que possua esses mesmos valores acrescidos do tamanho da lista restante. (se necessário, 
;; implementem a função (nroel lista) para auxiliar nesse processo)
;; >(alteralista ´(10 20 30 40 50))

(defun alteralista (lista)
    (cond ((null lista) nil)
          (t (cons (+ (car lista) (- (length lista) 1)) (alteralista (cdr lista))))))

(format t "Nova lista: ~A~%" (alteralista '(10 20 30 40 50)))
(terpri)