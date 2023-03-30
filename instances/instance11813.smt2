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
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}")))))
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ":"))) (str.to_re "//"))) (re.opt (re.++ (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@"))) (re.+ (re.++ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 0 253) (re.union (str.to_re "-") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "."))) ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.++ (re.opt (str.to_re "&")) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (str.to_re "=")))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "/.mpg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}")))))
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 1 3) (re.range "1" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (str.to_re "0\u{a}")))))
(check-sat)
