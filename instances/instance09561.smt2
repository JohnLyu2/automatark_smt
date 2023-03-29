(declare-const X String)
; /filename=[^\n]*\x2ecov/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cov/i\u{a}"))))
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "*"))) (re.opt (str.to_re "*")) (re.* (re.comp (str.to_re "*"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
