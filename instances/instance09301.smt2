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
(assert (not (str.in_re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "//pte.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (str.to_re "90") (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (str.to_re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to_re ",") (re.opt (str.to_re "-")) (re.union (str.to_re "180") (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "7") (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " ") re.allchar)) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") re.allchar)) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)

(exit)
