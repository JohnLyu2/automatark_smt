(declare-const X String)
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}"))))
(check-sat)

(exit)
