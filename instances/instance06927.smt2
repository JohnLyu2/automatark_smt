(declare-const X String)
; /filename=[^\n]*\x2edws/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dws/i\u{a}"))))
; ^[0-9]*[1-9]+[0-9]*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
