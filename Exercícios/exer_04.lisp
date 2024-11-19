;; Recebe uma lista de números e verifica se eles estão ordenados ou não.

(setq l '(0 1 1 2 3 4))

(defun ordenado (lista)
  (cond
    ((or (null lista) (null (cdr lista))) t) ;; Lista vazia ou com 1 elemento -> ordenada
    ((> (car lista) (cadr lista)) nil) ;; Não está ordenada
    (t (ordenado (cdr lista))))) ;; Continue verificando o restante


(format t "A lista ~A está ordenada? ~A ~%" l (ordenado l))