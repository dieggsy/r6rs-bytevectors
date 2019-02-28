;; From SRFI 151

(define (mask start end) (bitwise-not (arithmetic-shift -1 (- end start))))

(define (bit-field n start end)
  (bitwise-and (mask start end) (arithmetic-shift n (- start))))
