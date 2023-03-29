(declare-const X String)
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "alert") (re.+ (re.range "0" "9")) (str.to_re "an") (re.* re.allchar) (str.to_re "Spyiz=e2give.comrichfind.com\u{a}"))))
; Host\x3AInformationwww\x2Ezhongsou\x2EcomLitequick\x2Eqsrch\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}"))))
(check-sat)

(exit)
