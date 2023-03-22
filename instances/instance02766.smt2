(declare-const X String)
; /Referer\x3a\s*?http\x3a\x2f{2}[a-z0-9\x2e\x2d]+\x2fs\x2f\x3fk\x3d/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "http:") ((_ re.loop 2 2) (str.to_re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "/s/?k=/Hi\u{a}")))))
(check-sat)
