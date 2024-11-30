;; Implemente a solução de um problema utilizando-se da definição de uma função de segunda ordem e a chamada com o uso de uma função lambda:
;; Dado uma lista de números, dobre todos os números positivos

;; Função que aplica a função de parametro 'func' para todos os elementos de uma lista
(defun todaLista (func lst)
  (if (null lst)
      nil
      (cons (funcall func (car lst)) ;; Aplica a função ao primeiro elemento
            (todaLista func (cdr lst)))))  ;; Continua com o resto da lista

;; Lista de números
(setq numeros '(-3 2 -1 4 0 5))

;; Uso de uma função lambda para dobrar números positivos
(setq resultado (todaLista (lambda (x) (if (> x 0) (* x 2) x)) numeros))

;; Exibindo o resultado
(format t "Lista após processar: ~a~%" resultado)