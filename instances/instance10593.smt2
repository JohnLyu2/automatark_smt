(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}")))
; ^\d+\/?\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
