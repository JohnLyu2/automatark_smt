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
(assert (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "answer") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:\u{a}"))))
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.opt (re.union (re.++ (str.to_re "H") (re.union (str.to_re "M") (str.to_re "X"))) (re.++ (str.to_re "M") (re.union (str.to_re "P") (str.to_re "SN"))) (re.++ (str.to_re "X") (re.opt (re.union (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "H"))) (re.++ (str.to_re "M") (re.union (str.to_re "D") (str.to_re "S"))))))))) (re.++ (str.to_re "K7") (re.opt (str.to_re "A"))) (re.++ (str.to_re "D") (re.opt (re.++ (str.to_re "H") (re.union (str.to_re "D") (str.to_re "L") (str.to_re "M")))))) ((_ re.loop 3 4) (re.range "0" "9")) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "G")) (re.union (str.to_re "C") (str.to_re "H") (str.to_re "J") (re.range "K" "N") (str.to_re "P") (str.to_re "Q") (re.range "T" "Y")) (re.union (re.range "Q" "T") (str.to_re "V")) (re.range "1" "4") (re.range "B" "E") (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "fsbuff") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:from:\u{a}")))))
(check-sat)
