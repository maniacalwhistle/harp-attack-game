(use-modules (chickadee graphics sprite))

(define sprite (load-image "assets/sprite-harp.png"))

(define position (vec2 0.0 240.0))
(define title-position (vec2 250.0 400.0))
(define title-color black)
(define (draw alpha)
  (draw-sprite sprite position)
  (draw-text "HARP ATTACK\n" title-position #:color title-color))

(define (update dt)
  (update-agenda dt))

(define (update-x x)
  (set-vec2-x! position x))

(let ((start 0.0)
      (end 536.0)
      (duration 4.0))
  (script
   (while #t
     (tween duration start end update-x)
     (tween duration end start update-x))))

