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
(assert (not (str.in_re X (re.++ (str.to_re "/TimeToLive=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "%60") (str.to_re "`")) (str.to_re "/iP\u{a}")))))
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "\u{a}[") (re.union (str.to_re "a") (str.to_re "b") (str.to_re "i") (str.to_re "u")) (re.* (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "][") (re.opt (str.to_re "/")) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "i") (str.to_re "u")) (str.to_re "]")))))
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "3") (str.to_re "4") (str.to_re "|") (str.to_re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.union (str.to_re "D") (str.to_re "F")) ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "D") (str.to_re "F")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.++ (re.union (str.to_re "D") (str.to_re "F")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ (re.union (str.to_re "D") (str.to_re "F")) ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "./Ui\u{a}"))))
(check-sat)

(exit)
