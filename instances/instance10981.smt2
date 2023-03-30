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
(assert (str.in_re X (re.++ (str.to_re "%") (re.opt (re.union (str.to_re "-") (str.to_re "+") (str.to_re "0") (str.to_re "#") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to_re "h") (str.to_re "l") (str.to_re "I"))) ((_ re.loop 1 1) (re.union (str.to_re "c") (str.to_re "C") (str.to_re "d") (str.to_re "i") (str.to_re "o") (str.to_re "u") (str.to_re "x") (str.to_re "X") (str.to_re "e") (str.to_re "E") (str.to_re "f") (str.to_re "g") (str.to_re "G") (str.to_re "n") (str.to_re "p") (str.to_re "s") (str.to_re "S"))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
