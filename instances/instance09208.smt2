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
(assert (not (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.++ (str.to_re "2") (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.union (str.to_re "1") (re.range "1" "3"))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re "$") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{a}")))))
(assert (str.in_re X (re.union (str.to_re "23:59:59") (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.+ (re.union (str.to_re "00") (str.to_re "15") (str.to_re "30") (str.to_re "45"))) (str.to_re ":00\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}"))))
(check-sat)

(exit)
