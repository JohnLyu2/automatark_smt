(declare-const X String)
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
; ^(?-i:A[DEFGILMNOQRSTUWZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORSUVXYZ]|D[EJKMOZ]|E[CEGHRST]|F[IJKMOR]|G[ABDEFHILMNPQRSTUWY]|H[KMNRTU]|I[DELNOQRST]|J[MOP]|K[EGHIMNPRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|O[M]|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTVYZ]|T[CDFGHJKLMNORTVWZ]|U[AGMSYZ]|V[ACEGINU]|W[FS]|Y[ET]|Z[AMW])$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "V") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "Z"))) (re.++ (str.to_re "E") (re.union (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "F") (re.union (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "H") (str.to_re "I") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "K") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "T") (str.to_re "U"))) (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "E") (str.to_re "L") (str.to_re "N") (str.to_re "O") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "J") (re.union (str.to_re "M") (str.to_re "O") (str.to_re "P"))) (re.++ (str.to_re "K") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "I") (str.to_re "K") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "Y"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "L") (str.to_re "O") (str.to_re "P") (str.to_re "R") (str.to_re "U") (str.to_re "Z"))) (str.to_re "OM") (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (str.to_re "QA") (re.++ (str.to_re "R") (re.union (str.to_re "E") (str.to_re "O") (str.to_re "U") (str.to_re "W"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "I") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "T") (re.union (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "Z"))) (re.++ (str.to_re "U") (re.union (str.to_re "A") (str.to_re "G") (str.to_re "M") (str.to_re "S") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "V") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "I") (str.to_re "N") (str.to_re "U"))) (re.++ (str.to_re "W") (re.union (str.to_re "F") (str.to_re "S"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "T"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "M") (str.to_re "W")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2emet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".met/i\u{a}"))))
; ^(\+27|27)?(\()?0?[87][23467](\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+27") (str.to_re "27"))) (re.opt (str.to_re "(")) (re.opt (str.to_re "0")) (re.union (str.to_re "8") (str.to_re "7")) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
