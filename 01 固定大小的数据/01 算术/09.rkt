;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |09|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define in #true)
 (if(string? in)
    (string-length in)
    (if(image? in)
       (*(image-width in)(image-height in))
       (if (number? in)
           (if(<= in 0) in (- in 1))
           (if(boolean? in)
              (if in 10 20)
              "Not supported data type"))))

;刚开始做的时候把代码放在一行，太蠢了，改成每在条件、选项时分段。
;if 表达式的条件表达式结果必然是布尔值，如果已经有布尔值，直接放在那里即可。