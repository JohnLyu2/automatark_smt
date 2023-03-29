(declare-const X String)
; ^[5,6]\d{7}|^$
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "5") (str.to_re ",") (str.to_re "6")) ((_ re.loop 7 7) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
; ProAgentHost\x3ALOGSeconds\-
(assert (not (str.in_re X (str.to_re "ProAgentHost:LOGSeconds-\u{a}"))))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in_re X (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{a}"))))
(check-sat)

(exit)
