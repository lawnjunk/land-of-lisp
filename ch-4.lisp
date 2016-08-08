(defvar *is-tiny* nil)

; progn lets run multible expression and returns value of last express
(if (< 3 10) 
  (progn (setf *is-tiny* t) 'that-was-tiny)
  'that-wasnt-tiny)

(defvar *number-is-odd* nil)

; when runz code with inplisit progn (mult statements) if true
(when (oddp 5)
  (setf *number-is-odd* t)
  'odd-num)

; unless runz code with implisit progn if false
(unless (oddp 6)
  (setf *number-is-odd* t)
  'odd-num)

; cond is a classic interface for branching in lisp
(defvar *slug* nil)

(defun in-krew? (person)
  (cond ((eq person 'julia)(setf *slug* t) 'quean-of-the-slugz) 
        ((eq person 'alex )(setf *slug* t) 'meme-of-the-sligz)
        (t (setf *slug* nil) 'not-slug)))

(in-krew? `alex)

(in-krew? `blorg)

*slug*

;case lets you supply a value to compare against
(defun nda-krew? (person)
  (case person
    ((adian) (setf *slug* t)'true-hero)
    ((ashia) (setf *slug* t)'angle-baby)
    (otherwise  (setf *slug* nil) 'no-one)))

(nda-krew? 'adian)
(nda-krew? 'ashia)

(nda-krew? 'blorg)


; logical and and or
(and (oddp 5) (oddp 7) (oddp 9))

(and (oddp 5) (oddp 7) (oddp 10))

(or (oddp 5) (oddp 7) (oddp 6))

(or (oddp 4) (oddp 8) (oddp 6))


(defvar *its-even* nil)
(or (oddp 4) (setf *its-even* t))
(or (oddp 4) (progn (print "false but keep gogin") nil )(setf *its-even* t))

(if (and t t t) 'wat)


; member is used to check if an item is in a list
; returns the tail of the list
(member 'slug '(alex slug neo))
; -> '(slug neo)


; wont work no more
;(setf (car (cadr (cadddr *wat*))) '(a b c))


; use eq to comare symbols
(defparameter *boog* 'slime)
(eq *boog* 'slime)
(eq 'wat 'wat)

; use equal to compare data
(equal "hello" "hello")
(equal 0 0)
(equal nil nil)
(equal '(1 2 3) '(1 2 3))
(equal '(1 2 3) (cons 1 (cons 2 (cons 3 nil))))

;equalp compare case insinsitive strings and int to float
(equalp 0 0.0)
(equalp "bob" "BOB")

