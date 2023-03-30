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
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}") (re.comp (str.to_re ".")) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "G") (str.to_re "g"))))))))
(check-sat)
