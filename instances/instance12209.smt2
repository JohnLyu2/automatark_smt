(declare-const X String)
; \b[1-9]\b
(assert (not (str.in_re X (re.++ (re.range "1" "9") (str.to_re "\u{a}")))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.comUser-Agent:\u{a}"))))
; From\x3A\<title\>ActualUser-Agent\x3A\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in_re X (str.to_re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\u{a}"))))
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in_re X (str.to_re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\u{a}")))
(check-sat)
