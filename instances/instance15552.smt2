(declare-const X String)
; /\x2espx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.spx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.+ (re.range "0" "9")) (str.to_re "sErverdist.atlas-ia.comUser-Agent:\u{a}")))))
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
(check-sat)

(exit)
