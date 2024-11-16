;; Implementar a função (somaN) que calcula o somatório dos primeiros N numeros naturais,

(defun somaN (n)
    (setq soma 0)
    (loop for i from 0 to n do
        (setq soma (+ soma i)))
    soma)

(format t "A soma dos ~A primeiros números naturais é: ~A ~%" 4 (somaN 4))