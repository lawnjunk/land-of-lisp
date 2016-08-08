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



