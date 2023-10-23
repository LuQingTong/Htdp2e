;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (==> sunny friday)
  (if(and  sunny (not friday))
     "wrong"
     #true))
;萌新差点做不出来。题干的另外一个意思是，如果sunny为真且friday为假，则不符合条件。
;题干的可行性有三种，反面只有一种，从反面用and更便利。