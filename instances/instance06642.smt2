(declare-const X String)
; /filename=[^\n]*\x2equo/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".quo/i\u{a}"))))
; (\(")([0-9]*)(\")
(assert (not (str.in_re X (re.++ (str.to_re "(\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22}\u{a}")))))
(check-sat)

(exit)
