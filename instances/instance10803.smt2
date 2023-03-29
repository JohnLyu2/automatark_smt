(declare-const X String)
; (\d{3}\-\d{2}\-\d{4})
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; \x7CConnected\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "|Connected") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}")))))
(check-sat)

(exit)
