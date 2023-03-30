(declare-const X String)
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}")))))
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}")))))
(check-sat)

(exit)
