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
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "J") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "Y"))) (str.to_re "CA") (re.++ (str.to_re "D") (re.union (str.to_re "K") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "L"))) (re.++ (str.to_re "H") (re.union (str.to_re "C") (str.to_re "E"))) (str.to_re "IL") (re.++ (str.to_re "K") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "E") (str.to_re "K") (str.to_re "M") (str.to_re "N") (str.to_re "S"))) (re.++ (str.to_re "L") (re.union (str.to_re "E") (str.to_re "C") (str.to_re "M") (str.to_re "V"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "L") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "N") (re.union (str.to_re "I") (str.to_re "O") (str.to_re "M") (str.to_re "R") (str.to_re "Z"))) (re.++ (str.to_re "P") (re.union (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "O") (str.to_re "K") (str.to_re "N") (str.to_re "P") (str.to_re "T") (str.to_re "U") (str.to_re "V"))) (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "K") (str.to_re "S") (str.to_re "V"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "O") (str.to_re "N") (str.to_re "P") (str.to_re "V"))) (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V"))) (re.++ (str.to_re "V") (re.union (str.to_re "K") (str.to_re "T"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "H") (str.to_re "I") (str.to_re "M") (str.to_re "V")))) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{a}")))))
(check-sat)
