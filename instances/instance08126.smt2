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
(assert (str.in_re X (re.++ (str.to_re "/.appendChild") (re.* re.allchar) (str.to_re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to_re "offset") (str.to_re "client")) (re.union (str.to_re "Height") (str.to_re "Left") (str.to_re "Parent") (str.to_re "Top") (str.to_re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to_re "offset") (str.to_re "client")) (re.union (str.to_re "Height") (str.to_re "Left") (str.to_re "Parent") (str.to_re "Top") (str.to_re "Width")) (str.to_re "/is\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}"))))
(assert (not (str.in_re X (str.to_re "/.exe/U\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/.pict") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
