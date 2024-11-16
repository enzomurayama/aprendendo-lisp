;; Faça uma função que verifica se dois conjuntos são iguais. Os conjuntos são dados por listas (não necessariamente ordenados)

(defvar list1 '(10 2 A 1 20 30 40))
(defvar list2 '(40 20 1 A 2 10 30))

(defun cjtosiguais (lista1 lista2)
  (every (lambda (x) (= (count x lista1) (count x lista2))) (remove-duplicates(append lista1 lista2))))

(format t "As listas ~A e ~A são iguais? ~A ~%" list1 list2 (cjtosiguais list1 list2))


;; A função 'every' em Common Lisp aplica uma função a cada elemento de uma lista e retorna T (verdadeiro) 
;; se a função aplicada a todos os elementos da lista retornar um valor verdadeiro (não-nulo). Caso contrário, ela retorna NIL.

;; (lambda (x) (= (count x lista1) (count x lista2))) - função que será aplicada para cada elemento da lista
;; (remove-duplicates(append lista1 lista2)) - união das duas listas sem valores repetidos
