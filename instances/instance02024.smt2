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
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "_") (str.to_re "=") (str.to_re "+") (str.to_re "}") (str.to_re "{") (str.to_re "'") (str.to_re "?"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "_") (str.to_re "=") (str.to_re "+") (str.to_re "}") (str.to_re "{") (str.to_re "'") (str.to_re "?"))))) (str.to_re "@") (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_")) (re.* (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "-") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))))) (str.to_re ".") (re.union (str.to_re "aero") (str.to_re "arpa") (str.to_re "biz") (str.to_re "com") (str.to_re "coop") (str.to_re "edu") (str.to_re "gov") (str.to_re "info") (str.to_re "int") (str.to_re "mil") (str.to_re "museum") (str.to_re "name") (str.to_re "net") (str.to_re "org") (str.to_re "pro") (str.to_re "travel") (str.to_re "mobi") (re.++ (re.range "a" "z") (re.range "a" "z")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "/i\u{a}")))))
(check-sat)

(exit)
