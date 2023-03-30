(declare-const X String)
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}"))))
; ^[a-zA-Z]([a-zA-Z0-9])*([\.][a-zA-Z]([a-zA-Z0-9])*)*$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
