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
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "DmInf^") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "offers.bullseye-network.comlogfile\u{a}"))))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "ftp") (re.++ (str.to_re "http") (re.opt (str.to_re "s")))) (str.to_re "://") (re.opt (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re ":") (re.* (re.comp (str.to_re "@"))) (str.to_re "@"))) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "."))) ((_ re.loop 1 1) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (str.to_re "/")) (re.opt (re.++ (re.* (re.union (str.to_re "/") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "~") (str.to_re "_") (str.to_re ".") (str.to_re ":") (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "?") (re.* (re.++ (re.* (re.union (str.to_re "/") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "~") (str.to_re "_") (str.to_re ".") (str.to_re ",") (str.to_re ":") (str.to_re "=") (str.to_re "{") (str.to_re "}") (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to_re "&")))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "+") (str.to_re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
