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
(assert (str.in_re X (re.++ (re.union (re.++ (re.union ((_ re.loop 1 1) (str.to_re "+")) ((_ re.loop 2 2) (str.to_re "0"))) (str.to_re "98")) ((_ re.loop 1 1) (str.to_re "0"))) (str.to_re "9") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}--") (re.* re.allchar))))))
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
(assert (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}\u{a}"))))
(assert (not (str.in_re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
