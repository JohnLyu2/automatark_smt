(declare-const X String)
; ^((A[LKSZR])|(C[AOT])|(D[EC])|(F[ML])|(G[AU])|(HI)|(I[DLNA])|(K[SY])|(LA)|(M[EHDAINSOT])|(N[EVHJMYCD])|(MP)|(O[HKR])|(P[WAR])|(RI)|(S[CD])|(T[NX])|(UT)|(V[TIA])|(W[AVIY]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "C"))) (re.++ (str.to_re "F") (re.union (str.to_re "M") (str.to_re "L"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "U"))) (str.to_re "HI") (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "A"))) (re.++ (str.to_re "K") (re.union (str.to_re "S") (str.to_re "Y"))) (str.to_re "LA") (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "H") (str.to_re "D") (str.to_re "A") (str.to_re "I") (str.to_re "N") (str.to_re "S") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "V") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "Y") (str.to_re "C") (str.to_re "D"))) (str.to_re "MP") (re.++ (str.to_re "O") (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R"))) (re.++ (str.to_re "P") (re.union (str.to_re "W") (str.to_re "A") (str.to_re "R"))) (str.to_re "RI") (re.++ (str.to_re "S") (re.union (str.to_re "C") (str.to_re "D"))) (re.++ (str.to_re "T") (re.union (str.to_re "N") (str.to_re "X"))) (str.to_re "UT") (re.++ (str.to_re "V") (re.union (str.to_re "T") (str.to_re "I") (str.to_re "A"))) (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "V") (str.to_re "I") (str.to_re "Y")))) (str.to_re "\u{a}"))))
; ^[\w0-9]+( [\w0-9]+)*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re " ") (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
