(declare-const X String)
; ^.*([^\.][\.](([gG][iI][fF])|([Jj][pP][Gg])|([Jj][pP][Ee][Gg])|([Bb][mM][pP])|([Pp][nN][Gg])))
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}") (re.comp (str.to_re ".")) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "G") (str.to_re "g")))))))
(check-sat)

(exit)
