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
(assert (not (str.in_re X (re.++ ((_ re.loop 2 4) (re.range "A" "Z")) (re.range "0" "9") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "@") (re.+ (re.++ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (str.to_re "."))) ((_ re.loop 2 9) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "./Him\u{a}")))))
(assert (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "8"))))))))))) (re.++ (re.opt (str.to_re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) ((_ re.loop 1 1) (re.range "0" "7")))))))))))) (str.to_re "\u{a}"))))
(check-sat)
