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
(set-info :status unknown)

(declare-const X String)
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}")))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "100")) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) ((_ re.loop 4 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))))) (re.opt (re.++ ((_ re.loop 1 255) (re.++ (str.to_re "/") ((_ re.loop 1 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))))) (re.opt (str.to_re "/")))) (re.opt (re.++ (re.opt (str.to_re "/")) (str.to_re "?") ((_ re.loop 1 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (str.to_re "=") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) ((_ re.loop 0 255) (re.++ (str.to_re "&") ((_ re.loop 1 255) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_"))) (str.to_re "=") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) (re.union (re.opt (str.to_re "/")) (re.++ (str.to_re "#") ((_ re.loop 0 255) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (str.to_re "|") (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "&") ((_ re.loop 2 12) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) (str.to_re ";")) (re.range "a" "z") (str.to_re "|") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re ":"))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.alfacleaner.com\u{a}")))))
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "'") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "'"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
