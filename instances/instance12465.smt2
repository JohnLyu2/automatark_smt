(declare-const X String)
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (str.in_re X (re.++ (str.to_re "\u{a};&") (re.union (re.++ (str.to_re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")))))))
; Referer\x3ATencentTraveler
(assert (not (str.in_re X (str.to_re "Referer:TencentTraveler\u{a}"))))
(check-sat)
