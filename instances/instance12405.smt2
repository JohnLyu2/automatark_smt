(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Murphy Berzish, Mitja Kulczynski, Federico Mora, Florin Manea, Joel Day, Dirk Nowotka, Vijay Ganesh, Zhengyang Lu
Generated on: 2020-10-01
Description: Translated from a collection of real-world regex queries, AutomataArk, collected by Loris D’Antoni and Fang Wang: https://github.com/lorisdanto/automatark
Application: Evaluate solvers on real-world regex queries
Target solver: Z3str3RE, CVC4, OSTRICH, Z3seq, Z3str3, Z3-Trau
Publications: Berzish, M., Kulczynski, M., Mora, F., Manea, F., Day, J. D., Nowotka, D., & Ganesh, V. (2021, July). An SMT solver for regular expressions and linear arithmetic over string length. In CAV 2021.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)

(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.range "0" "9")))))
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "B") (str.to_re "E") (str.to_re "G") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "S")) (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to_re "W") (re.range "2" "9")) (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "B") (str.to_re "L"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "F") (str.to_re "H") (str.to_re "M") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W"))) (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "E") (re.union (str.to_re "H") (str.to_re "N") (str.to_re "X"))) (re.++ (str.to_re "F") (re.union (str.to_re "K") (str.to_re "Y"))) (re.++ (str.to_re "G") (re.union (str.to_re "L") (str.to_re "U") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "G") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "X"))) (re.++ (str.to_re "I") (re.union (str.to_re "G") (str.to_re "M") (str.to_re "P") (str.to_re "V"))) (str.to_re "JE") (re.++ (str.to_re "K") (re.union (str.to_re "A") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "L") (str.to_re "N") (str.to_re "S") (str.to_re "U"))) (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "K") (str.to_re "L"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W"))) (re.++ (str.to_re "O") (re.union (str.to_re "L") (str.to_re "X"))) (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "R") (re.union (str.to_re "G") (str.to_re "H") (str.to_re "M"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "G") (str.to_re "K") (re.range "L" "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "F") (str.to_re "N") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "W"))) (str.to_re "UB") (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "F") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "V"))) (str.to_re "YO") (str.to_re "ZE")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to_re "W1") (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "WC") (re.range "1" "2")) (re.++ (str.to_re "EC") (re.range "1" "4")) (str.to_re "SW1")) (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y")))) (re.opt (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z")))) (re.++ (str.to_re "\u{a}GIR") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "0AA"))))))
(check-sat)
