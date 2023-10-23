;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |13|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (string-first str)
  (if (> (string-length str) 0)
      (string-ith str 0)
      "your string has nothing"))

;分别用到了string-ith,提取指定位置的单个字符串(也可以用substring 0 1)
;以及if表达式与westring-length,判断字符串是否非空