(declare-const X String)
; /\x3e\x0d\x0aSUBJECT\x3a (\d{1,3}\x2e){3}\d{1,3}\x7c[^\r\n]*\x7c\d{2,4}\x0d\x0a/G
(assert (str.in_re X (re.++ (str.to_re "/>\u{d}\u{a}SUBJECT: ") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "|") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "|") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/G\u{a}"))))
(check-sat)

(exit)
