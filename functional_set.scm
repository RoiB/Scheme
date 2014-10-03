;; Set: Int -> Boolean

(define (contains set elem) (set elem))

(define (singletonSet elem)
  (lambda (x) (eq? elem x)))

(define (union set1 set2)
  (lambda (elem) (or (set1 elem) (set2 elem))))

(define (intersect set1 set2)
  (lambda (elem) (and (set1 elem) (set2 elem))))

(define (diff set1 set2) 
  (lambda (elem) (and (contains set1 elem) (not (contains set2 elem)))))

(define (make_set size) 
  (if (eq? size 0)
      (lambda (x) #f)
      (union (singletonSet size) (make_set (- size 1)))))

(define (filter-set set p)
  (lambda (elem) 
    (if (p elem) (set elem) #f)))
