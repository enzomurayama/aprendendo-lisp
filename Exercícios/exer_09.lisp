;; QUESTÃO DE PROVA

;; Escreva uma função em Lisp que recebe uma lista de números e retorna uma nova lista 
;; contendo apenas os números pares da lista original. Lembre-se de usar apenas funções puras. 
;; [pode fazer uso da funçao (evenp atomo) que returna true se o atomo for numerico e par e falso caso contrário]

(defun listaPares (lista)
    (cond ((null lista) nil)
          ((evenp (car lista)) (cons (car lista) (listaPares (cdr lista))))
          (t (listaPares (cdr lista)))))

(format t "Nova lista com os números pares: ~A~%" (listaPares '(1 2 3 4 5 6 7)))
(terpri)