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
(assert (str.in_re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to_re "..")) (str.to_re "/"))) ((_ re.loop 1 1) (str.to_re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to_re ".") (str.to_re "j") (str.to_re "p") (str.to_re "g") (str.to_re "i") (str.to_re "f"))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fon/i\u{a}"))))
(assert (str.in_re X (str.to_re "TSA/S:Users\u{5c}http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))
(check-sat)
