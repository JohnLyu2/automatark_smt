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
(assert (not (str.in_re X (re.++ (str.to_re "/.webm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") (re.union (re.range "0" "9") (str.to_re "9")))) (re.opt (re.union (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))) (str.to_re "Z"))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https") (str.to_re "ftps")) (str.to_re "://"))) (re.+ (re.union (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.+ (re.union ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "aero") (str.to_re "arpa") (str.to_re "asia") (str.to_re "coop") (str.to_re "info") (str.to_re "jobs") (str.to_re "mobi") (str.to_re "museum") (str.to_re "name") (str.to_re "travel"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (str.to_re "/")) (re.opt (re.++ (re.opt (re.++ (re.+ (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))) (str.to_re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))))) (re.* (re.++ (str.to_re "&") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))) (str.to_re "=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~") (str.to_re "'") (str.to_re ","))))))) (re.* (re.union (str.to_re "-") (str.to_re ".") (str.to_re ",") (str.to_re "@") (str.to_re "^") (str.to_re "%") (str.to_re ":") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "-") (str.to_re "@") (str.to_re "^") (str.to_re "%") (str.to_re "/") (str.to_re "~") (str.to_re "+") (str.to_re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}"))))
(check-sat)
