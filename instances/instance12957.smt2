(declare-const X String)
; Word\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (not (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ExploiterSchwindler/r/keys/keys\u{a}")))))
; /^\x2Fcap\x2Ftemp\x2F[A-Za-z0-9]+\x2Ejpg/miU
(assert (not (str.in_re X (re.++ (str.to_re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jpg/miU\u{a}")))))
(check-sat)

(exit)
