(declare-const X String)
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (not (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}"))))
(check-sat)

(exit)
