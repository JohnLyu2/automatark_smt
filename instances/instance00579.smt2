(declare-const X String)
; /\x02[^\x0a]+\x3a[^\x0a]+\x0a/
(assert (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{a}/\u{a}"))))
(check-sat)
