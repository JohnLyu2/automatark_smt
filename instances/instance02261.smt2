(declare-const X String)
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}"))))
(check-sat)

(exit)
