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
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "01") (str.to_re "02") (str.to_re "03") (str.to_re "04") (str.to_re "05") (str.to_re "06") (str.to_re "07") (str.to_re "08") (str.to_re "09") (str.to_re "10") (str.to_re "11") (str.to_re "12") (str.to_re "51") (str.to_re "52") (str.to_re "53") (str.to_re "54") (str.to_re "55") (str.to_re "56") (str.to_re "57") (str.to_re "58") (str.to_re "59") (str.to_re "60") (str.to_re "61") (str.to_re "62")) (re.union (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) ((_ re.loop 1 1) (re.range "0" "1")))) (str.to_re "/") ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(assert (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}")))
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
(check-sat)

(exit)
