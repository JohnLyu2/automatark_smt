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
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Arrow") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "whenu.com\u{13}\u{a}"))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "/*") (re.+ (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*/")) (re.++ (re.* re.allchar) ((_ re.loop 2 2) (str.to_re "/")) (re.* (str.to_re "/"))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "\u{5c}/") (re.opt re.allchar))) (str.to_re "/") ((_ re.loop 0 3) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m")))) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.opt re.allchar))) (str.to_re "'")) (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.opt re.allchar))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.opt (str.to_re "e")) (re.opt (str.to_re "-")) (re.opt (str.to_re "e")) (re.* (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "e") (re.opt (str.to_re "-")) (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re ":") (str.to_re "=") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "-") (str.to_re "&") (str.to_re "!") (str.to_re "|") (str.to_re "+") (str.to_re ",") (str.to_re ".") (str.to_re "/") (str.to_re "*")) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "ftps")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))))) (re.opt (re.++ (re.opt (str.to_re ".")) ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "#"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re ",") (str.to_re "'") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~"))))) (str.to_re "\u{a}.") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rjs/i\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "Yeah!") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "securityOmFkbWluADROAR\u{a}")))))
(check-sat)
