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
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "//") (re.opt (str.to_re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "/") (re.opt (str.to_re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to_re ";") (str.to_re ",") (re.range "0" "9") (str.to_re "+"))) (str.to_re "/U\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "#") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "-") (str.to_re "."))) (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/"))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (str.to_re "?") (str.to_re "/") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@"))))) (re.opt (re.++ (str.to_re "#") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":") (str.to_re "@") (str.to_re "/") (str.to_re "?"))))) (str.to_re "#i\u{a}") ((_ re.loop 0 2) (str.to_re "/")) (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":"))) (str.to_re "@"))) (re.+ (re.union (str.to_re "[") (str.to_re "]") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re ":"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9"))))))))
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}")))))
(assert (str.in_re X (re.++ (re.range "a" "z") ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re ",") (str.to_re "-") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
