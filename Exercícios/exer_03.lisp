;; Recebe um elemento e uma lista qualquer. Retorna o número de ocorrências do elemento na lista

(setq elemento 8)
(setq lista '(5 7 5 8 12 8 8 7 6 5 8 8))

(defun nro-ocorrencia (elemento lista)
    (cond
        ((null lista) 0) ; Caso base: se a lista é vazia, retorna 0
        ((equal elemento (car lista)) 
            (+ 1 (nro-ocorrencia elemento (cdr lista)))) ; Incrementa se o elemento for igual ao atual
        (t (nro-ocorrencia elemento (cdr lista))))) ; Continua buscando no restante da lista

(format t "O elemento ~A aparece ~A vezes na lista ~A ~%" elemento (nro-ocorrencia elemento lista) lista)