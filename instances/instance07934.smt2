(declare-const X String)
; ^[^']*$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}"))))
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}"))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (str.in_re X (re.++ (str.to_re "/&tv=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/smiU\u{a}"))))
(check-sat)
