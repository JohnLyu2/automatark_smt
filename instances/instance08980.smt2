(declare-const X String)
; From\x3A\<title\>ActualUser-Agent\x3A\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in_re X (str.to_re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\u{a}"))))
; trackwww\x2Ealfacleaner\x2Ecom
(assert (not (str.in_re X (str.to_re "trackwww.alfacleaner.com\u{a}"))))
(check-sat)

(exit)
