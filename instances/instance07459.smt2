(declare-const X String)
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}")))))
; /filename=[^\n]*\x2exlw/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xlw/i\u{a}"))))
(check-sat)
