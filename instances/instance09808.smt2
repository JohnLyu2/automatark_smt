(declare-const X String)
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{a}")))))
; /filename=[^\n]*\x2exml/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xml/i\u{a}"))))
(check-sat)
