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
(assert (not (str.in_re X (re.++ (re.union (str.to_re "refs") (str.to_re "references") (str.to_re "re") (str.to_re "closes") (str.to_re "closed") (str.to_re "close") (str.to_re "see") (str.to_re "fixes") (str.to_re "fixed") (str.to_re "fix") (str.to_re "addresses")) (str.to_re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re " and ") (str.to_re ", ") (str.to_re " & ") (str.to_re " ")) (str.to_re "#") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (str.to_re "Subject:EnTrYExplorer*PORT2*Host:\u{a}"))))
(check-sat)
