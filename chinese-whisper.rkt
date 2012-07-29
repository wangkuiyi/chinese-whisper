#lang racket


(let ((leftmost (make-channel)))
  (define (setup-whispers left i n)
    (if (>= i n)
        left
        (let ((right (make-channel)))
          (thread (lambda ()
                    (channel-put left (+ 1 (channel-get right)))))
          (setup-whispers right (+ 1 i) n))))
  (let ((rightmost (setup-whispers leftmost 0 100000)))
    (thread (lambda () (channel-put rightmost 1)))
    (channel-get leftmost)))

