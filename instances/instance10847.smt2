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
(assert (str.in_re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "p") (str.to_re "A") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")) (re.* (str.to_re " ")) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "<img") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* (re.++ (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "src=\u{22}") (re.+ (re.++ (re.opt (str.to_re "/")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")) (re.opt (str.to_re "/")))) (str.to_re ".") (re.union (str.to_re "png") (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "gif")) (str.to_re "\u{22}") (re.* (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/>\u{a}")))))
(check-sat)
