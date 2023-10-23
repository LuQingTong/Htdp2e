;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |34|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;1.使用string数据来表示文本信息【数据定义】
;2.String->String【函数签名】
;从str里提取出第一个字符。【目的声明】
;(define (string-first str) "x")【函数头】
;3.输入："hello",期望输出"h"【函数示例】
;4&5.书写【模板】，进行编码,完成【函数定义】
(define (string-first str)
  (string-ith str 0))
;6.【测试示例】
(string-first "hello")