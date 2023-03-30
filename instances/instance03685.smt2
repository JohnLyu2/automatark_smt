(declare-const X String)
; ZC-Bridge\w+USER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "USER-AttachedReferer:youPointsUser-Agent:Host:\u{a}")))))
(check-sat)

(exit)
