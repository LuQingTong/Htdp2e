;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |29|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;常量定义
(define attendees-cost 1.50)
(define base-attendees 120)
(define base-ticket-price 5)
(define price-change 0.1)
(define attendees-change 15)

;函数定义
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(define (attendees ticket-price)
  (- base-attendees (* (/ (- ticket-price base-ticket-price) price-change) attendees-change)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* attendees-cost (attendees ticket-price)))

;函数调用
(profit 3)
(profit 4)
(profit 5)

;;如果没有上一练习题内用常量定义代替魔术值，这个步骤实现会不清晰，尤其当数值可能重复的时候。
;;口号：为问题陈述中提到的每一个常量，引入对应的常量定义。