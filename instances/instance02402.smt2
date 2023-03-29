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
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (str.to_re "T") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::") (re.opt (re.union (str.to_re "Z") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))) (re.union (re.++ (str.to_re "1") (re.union (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (str.to_re "T") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::") (re.opt (re.union (str.to_re "Z") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))) (re.union (re.++ (str.to_re "1") (re.union (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.union (str.to_re "16") (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00")) (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")))) (str.to_re "-02-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "T") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::") (re.opt (re.union (str.to_re "Z") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))) (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (str.to_re "1") (re.union (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-02-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "T") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::") (re.opt (re.union (str.to_re "Z") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)

(exit)
