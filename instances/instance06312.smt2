(declare-const X String)
; Toolbar[^\n\r]*tvshowtickets\w+weatherHost\x3AUser-Agent\x3Atwfofrfzlugq\x2feve\.qd
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "tvshowtickets") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "weatherHost:User-Agent:twfofrfzlugq/eve.qd\u{a}")))))
; ^[0-9]{2,3}-? ?[0-9]{6,7}$
(assert (str.in_re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (str.to_re " ")) ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
