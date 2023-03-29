(declare-const X String)
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; [0-7]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "7")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
