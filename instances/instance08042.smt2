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
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m"))))) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "\u{a}"))))))
(assert (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xsl/i\u{a}"))))
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.* (re.++ (str.to_re ";") (re.* (str.to_re " ")) (re.* (str.to_re " ")) (str.to_re "@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "\u{a}@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9"))))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpe/i\u{a}")))))
(check-sat)
