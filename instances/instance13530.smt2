(declare-const X String)
; ^[a-zA-Z0-9._-]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (str.to_re "\u{a}")))))
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re "'-") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{22}\u{a}"))))
; ^((A[LKZR])|(C[AOT])|(D[EC])|(FL)|(GA)|(HI)|(I[DLNA])|(K[SY])|(LA)|(M[EDAINSOT])|(N[EVHJMYCD])|(O[HKR])|(PA)|(RI)|(S[CD])|(T[NX])|(UT)|(V[TA])|(W[AVIY]))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "L") (str.to_re "K") (str.to_re "Z") (str.to_re "R"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "C"))) (str.to_re "FL") (str.to_re "GA") (str.to_re "HI") (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "A"))) (re.++ (str.to_re "K") (re.union (str.to_re "S") (str.to_re "Y"))) (str.to_re "LA") (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "D") (str.to_re "A") (str.to_re "I") (str.to_re "N") (str.to_re "S") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "V") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "Y") (str.to_re "C") (str.to_re "D"))) (re.++ (str.to_re "O") (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R"))) (str.to_re "PA") (str.to_re "RI") (re.++ (str.to_re "S") (re.union (str.to_re "C") (str.to_re "D"))) (re.++ (str.to_re "T") (re.union (str.to_re "N") (str.to_re "X"))) (str.to_re "UT") (re.++ (str.to_re "V") (re.union (str.to_re "T") (str.to_re "A"))) (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "V") (str.to_re "I") (str.to_re "Y")))) (str.to_re "\u{a}")))))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.comToolBarKeylogger\u{a}"))))
(check-sat)

(exit)
