;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 31（important）) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;;写信批处理程序，读入三个文件，输出一个文件
(define (letter fst lst signature-name)
  (string-append
    (opening fst)
    "\n\n"
    (body fst lst)
    "\n\n"
    (closing signature-name)))
 
(define (opening fst)
  (string-append "Dear " fst ","))
 
(define (body fst lst)
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))
 
(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))


(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter(read-file in-fst)
                     (read-file in-lst)
                     (read-file in-signature))))

;;生成三个文件，调用批处理程序,得到"out.dat"文件
(write-file "fst.dat" "Lu")
(write-file "lst.dat" "QingTong")
(write-file "signature.dat" "Baby")
(main "fst.dat" "lst.dat" "signature.dat" "out.dat")