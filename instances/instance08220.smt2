(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}")))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}")))))
; \b[1-9]{1}[0-9]{1,5}-\d{2}-\d\b
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
