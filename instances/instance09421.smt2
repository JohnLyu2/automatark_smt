(declare-const X String)
; Subject\x3A.*User-Agent\x3A.*ResultATTENTION\x3A
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:\u{a}"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}"))))
(check-sat)

(exit)
