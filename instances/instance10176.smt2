(declare-const X String)
; X-Mailer\x3AisSubject\x3a
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}isSubject:\u{a}"))))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}"))))
(check-sat)
