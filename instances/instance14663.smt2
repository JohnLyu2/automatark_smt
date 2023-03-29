(declare-const X String)
; <script[\s\S]*?</script([\s\S]*?)>
(assert (not (str.in_re X (re.++ (str.to_re "<script") (re.* (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "</script") (re.* (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">\u{a}")))))
; [\dA-Za-z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
; (facebook|twitter|youtube)
(assert (str.in_re X (re.++ (re.union (str.to_re "facebook") (str.to_re "twitter") (str.to_re "youtube")) (str.to_re "\u{a}"))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.+ (re.range "0" "9")) (str.to_re "sErverdist.atlas-ia.comUser-Agent:\u{a}")))))
(check-sat)

(exit)
