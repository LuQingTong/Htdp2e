;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 27-28) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;常量定义
(define performance-cost 180)
(define attendees-cost 0.04)
(define base-attendees 120)
(define base-ticket-price 5)
(define price-change 0.1)
(define attendees-change 15)

;函数定义
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ performance-cost (* attendees-cost (attendees ticket-price))))

(define (attendees ticket-price)
  (- base-attendees (* (/ (- ticket-price base-ticket-price) price-change) attendees-change)))

;函数调用
(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)

;;1.注意用注释将不同定义或调用的部分区分开；
;;2.顺序：先常量定义（下次记得要大写），再从重到轻进行函数定义；
;;3.不管是将魔术值重构为常量定义，还是使用函数复合而非单个函数定义抑或使用注释，
;;目的都是为了养成良好编程习惯，方便日后他人、自己阅读与修改。