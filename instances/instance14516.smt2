(declare-const X String)
; (15(8[48]|9[26]))|((1[6-9]|[2-9]\d)(0[48]|[13579][26]|[2468][048]))|(([2468][048]|16|3579[26])00)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "15") (re.union (re.++ (str.to_re "8") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "9") (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))))) (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (str.to_re "16") (re.++ (str.to_re "3579") (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))))
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "~")) (str.to_re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.union (str.to_re "\u{5c}") (str.to_re "/")))) (re.+ re.allchar) (str.to_re "\u{a}")))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)
