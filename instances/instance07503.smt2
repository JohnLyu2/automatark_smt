(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (str.in_re X (str.to_re "www.sogou.comUser-Agent:\u{a}")))
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":\u{a}") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2edoc/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".doc/i\u{a}"))))
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}toolbar.wishbone.com\u{a}"))))
; &( )
(assert (not (str.in_re X (str.to_re "& \u{a}"))))
(check-sat)
