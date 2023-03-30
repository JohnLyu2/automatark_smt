(declare-const X String)
; ^(.|\n){0,16}$
(assert (str.in_re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "\u{a}"))))
; ^N[1-9][0-9]{0,4}$|^N[1-9][0-9]{0,3}[A-Z]$|^N[1-9][0-9]{0,2}[A-Z]{2}$
(assert (not (str.in_re X (re.++ (str.to_re "N") (re.range "1" "9") (re.union ((_ re.loop 0 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.range "A" "Z")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{a}")))))))
; Host\x3A\supgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}"))))
(check-sat)

(exit)
