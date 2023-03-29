(declare-const X String)
; /filename=[^\n]*\x2espx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".spx/i\u{a}"))))
; \|(http.*)\|(.*)$/ig
(assert (str.in_re X (re.++ (str.to_re "||") (re.* re.allchar) (str.to_re "/ig\u{a}http") (re.* re.allchar))))
(check-sat)

(exit)
