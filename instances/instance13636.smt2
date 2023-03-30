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
(set-info :status unsat)

(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (re.union (str.to_re "0") (str.to_re "1"))))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (str.to_re "0")))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9")))))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "//?q=") (re.* (re.comp (str.to_re "&"))) (str.to_re "##1/U\u{a}"))))
(assert (not (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}"))))
(check-sat)
