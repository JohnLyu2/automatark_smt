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
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "DK") (str.to_re "FI") (str.to_re "HU") (str.to_re "LU") (str.to_re "MT") (str.to_re "SI")) (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (str.to_re "BE") (str.to_re "EE") (str.to_re "DE") (str.to_re "EL") (str.to_re "LT") (str.to_re "PT")) (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (re.union (str.to_re "IT") (str.to_re "LV")) (re.opt (str.to_re "-")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (re.union (str.to_re "LT") (str.to_re "SE")) (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "AT") (re.opt (str.to_re "-")) (str.to_re "U") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "CZ") (re.opt (str.to_re "-")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "H") (re.range "J" "N") (re.range "P" "Z"))) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "NL") (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "B") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}ES") (re.opt (str.to_re "-")) (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")))))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.opt (str.to_re "0")) (str.to_re "2"))) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (str.to_re "29") (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.opt (str.to_re "0")) (str.to_re "2") (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))))) (str.to_re "\u{a}")))))
(assert (str.in_re X (str.to_re "ServerHost:tid=%toolbar_idcomtrustyfiles.com\u{a}")))
(assert (not (str.in_re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
