(declare-const X String)
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}"))))
; Toolbar\s+wwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwProbnymomspyo/zowy\u{a}")))))
; ^(([a-zA-Z]{3})?([0-9]{4}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)

(exit)
