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
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "AN") (str.to_re "UN") (str.to_re "UL"))) (str.to_re "FEB") (str.to_re "MAR") (re.++ (str.to_re "A") (re.union (str.to_re "PR") (str.to_re "UG"))) (str.to_re "MAY") (str.to_re "SEP") (str.to_re "NOV") (str.to_re "DEC") (str.to_re "OCT")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}0") (re.range "0" "9")))))
(assert (not (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}"))))
(check-sat)
