(declare-const X String)
; wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in_re X (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}")))
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\u{a}"))))
; ^(([0][0-9]|[1][0-2])|[0-9]):([0-5][0-9])( *)((AM|PM)|(A|P))$
(assert (str.in_re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.* (str.to_re " ")) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "A") (str.to_re "P")) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}")))))
(check-sat)
