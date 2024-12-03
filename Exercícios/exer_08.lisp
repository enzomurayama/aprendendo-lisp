;; QUESTÃO DE PROVA

;; Construa um programa em Lisp para, dada uma lista L e dois elementos E1 e E2 de qualquer tipo, 
;; verificar se os elementos E1 e E2 aparecem na lista de forma consecutiva (E1 seguido imediatamente de E2, 
;; sem elementos intermediários) e, se aparecem, encontrar a posição de E1 na lista supondo que o primeiro elemento 
;; da lista está na posição 0 (zero). Considerar apenas o primeiro nível da lista. Não usar função pré-definida member (usar função eq)

(defun elementosConsecutivos (L E1 E2)
    (cond ((null L) nil) 
        ((and (eq E1 (car L)) (eq E2 (cadr L))) 0) 
        (t (let ((resto (elementosConsecutivos (cdr L) E1 E2)))
            (if resto
                (+ resto 1) 
                nil))))) 


(format t "Posição de E1 na lista: ~A~%" (elementosConsecutivos '(1 2 3 4 5) 3 4))
(terpri)

#|  
    Está errado...

    (defun elementosConsecutivos (L E1 E2)
    (cond ((null L) 0)
          ((and (eq E1 (car L)) (eq E2 (cadr L))) 0)
          (t (+ (elementosConsecutivos (cdr L) E1 E2) 1))))
|#