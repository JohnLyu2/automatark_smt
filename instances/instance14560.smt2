(declare-const X String)
; ^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "=") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; ^((Fred|Wilma)\s+Flintstone|(Barney|Betty)\s+Rubble)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "Fred") (str.to_re "Wilma")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Flintstone")) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "RubbleB") (re.union (str.to_re "arney") (str.to_re "etty")))) (str.to_re "\u{a}")))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}")))
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (str.in_re X (re.++ (str.to_re "/{\u{22}") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{22}:\u{22}") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "false")) (str.to_re "\u{22},/smiP\u{a}"))))
(check-sat)

(exit)
