(declare-const X String)
; ^(\d+(,\d+)*)+$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2empg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}")))))
(check-sat)

(exit)
