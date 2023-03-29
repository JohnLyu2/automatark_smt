(declare-const X String)
; ^\d+$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2erp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rp/i\u{a}")))))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}"))))
(check-sat)

(exit)
