(declare-const X String)
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ert/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}")))))
(check-sat)
