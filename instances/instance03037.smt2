(declare-const X String)
; /^\x2Fcap\x2Ftemp\x2F[A-Za-z0-9]+\x2Ejpg/miU
(assert (str.in_re X (re.++ (str.to_re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jpg/miU\u{a}"))))
(check-sat)
