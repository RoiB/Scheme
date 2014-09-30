;;; insertion sort
(define (isort xs)
  (if (eqv? xs '()) 
      '()
      (insert (car xs) (isort (cdr xs)))))

(define (insert elem xs)
  (cond ((eqv? '() xs) (cons elem '()))
        ((< elem (car xs)) (cons elem xs))
        (else (cons (car xs) (insert elem (cdr xs))))))
