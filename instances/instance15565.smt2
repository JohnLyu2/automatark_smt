(declare-const X String)
; \.cfg\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\u{a}"))))
; ^([A-HJ-PR-Y]{2,2}[056][0-9]\s?[A-HJ-PR-Y]{3,3})$|^([A-HJ-NP-Y]{1,3}[0-9]{2,3}?\s[A-Z]{3,3})$|^([A-Z]{1,3}\s?[0-9]{1,4}([A-Z]{1,1})?)$|^([0-9]{4,4}[A-Z]{1,3})$|^([A-Z]{1,2}\s?[0-9]{1,4})$|^([A-Z]{2,3}\s?[0-9]{1,4})$|^([0-9]{1,4}\s?[A-Z]{2,3})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y"))) (re.union (str.to_re "0") (str.to_re "5") (str.to_re "6")) (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y")))) (re.++ ((_ re.loop 1 3) (re.union (re.range "A" "H") (re.range "J" "N") (re.range "P" "Y"))) ((_ re.loop 2 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 3 3) (re.range "A" "Z"))) (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 4) (re.range "0" "9")) (re.opt ((_ re.loop 1 1) (re.range "A" "Z")))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 3) (re.range "A" "Z"))) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 3) (re.range "A" "Z")))))))
; (?i:[aeiou]+)\B
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u"))) (str.to_re "\u{a}")))))
(check-sat)
