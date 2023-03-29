(declare-const X String)
; /filename=[^\n]*\x2ejfi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfi/i\u{a}"))))
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (not (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "ATTENTION:email\u{a}")))))
(check-sat)

(exit)
