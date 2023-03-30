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
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "toX-Mailer:\u{13}Logsmax-Cookie:AppName\u{a}"))))
(assert (str.in_re X (re.++ (re.opt (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "://"))) (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))) (re.union (str.to_re "/") (re.* (re.++ (str.to_re "/") (re.union (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re ":") (str.to_re "@") (str.to_re "!") (str.to_re "$") (str.to_re "&") (str.to_re "'") (str.to_re "(") (str.to_re "}") (str.to_re "*") (str.to_re "+") (str.to_re "-") (str.to_re "_") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re "~") (str.to_re "."))) (re.+ (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (re.range "0" "9"))))))))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (re.++ (str.to_re "&") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))))))) (str.to_re "\u{a}"))))
(check-sat)
