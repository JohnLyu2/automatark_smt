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
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (str.to_re "3")) ((_ re.loop 1 1) (re.range "0" "1"))) (re.++ (re.opt (re.range "1" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "-") (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "2"))) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "3"))) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m3u/i\u{a}"))))
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "+") (str.to_re "-")))) (re.+ (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re "@") (re.union (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "-")))) ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))) ((_ re.loop 4 4) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".")))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/sleep|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "09") (str.to_re "9")) (str.to_re "1") (re.range "1" "9") (str.to_re "\u{5c}") ((_ re.loop 7 7) (str.to_re "d"))) (re.++ (str.to_re "\u{a}") (re.union (str.to_re "09") (str.to_re "9")) (str.to_re "3") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "4") (str.to_re "5") (str.to_re "6")) (str.to_re "\u{5c}") ((_ re.loop 7 7) (str.to_re "d"))))))
(check-sat)
