(declare-const X String)
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (not (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "ATTENTION:email\u{a}")))))
(check-sat)

(exit)
