(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
; /filename=[^\n]*\x2ewmv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmv/i\u{a}")))))
; Host\x3A\dKeyloggercargo=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keyloggercargo=\u{a}"))))
(check-sat)

(exit)
