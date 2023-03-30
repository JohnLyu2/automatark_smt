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
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 0 2) (re.++ (str.to_re " ") (re.range "A" "Z") (str.to_re "."))) (str.to_re " ") (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to_re "O")) ((_ re.loop 1 1) (str.to_re "'")) (re.range "A" "Z") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))) (re.opt (re.++ (str.to_re " ") (re.union (str.to_re "Jr.") (str.to_re "Sr.") (str.to_re "IV") (str.to_re "III") (str.to_re "II")))) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))))))))
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://") ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar) (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://")) (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar)) (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) re.allchar)) (re.+ (re.union (re.range "a" "z") (str.to_re "-") (re.range "0" "9"))) re.allchar (re.opt ((_ re.loop 2 3) (re.range "a" "z"))) ((_ re.loop 2 6) (re.range "a" "z")) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re ","))))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re "%") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re "#"))))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "aresflashdownloader.com\u{a}"))))
(check-sat)
