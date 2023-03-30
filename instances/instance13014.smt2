(declare-const X String)
; ^(\w(([.-])*)(\s)?)+$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re ".") (str.to_re "-"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}")))
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}"))))
(check-sat)

(exit)
