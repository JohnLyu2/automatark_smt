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
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "o") (str.to_re "z")) (str.to_re "/Ri\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}")))))
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
(assert (str.in_re X (str.to_re "//ib2//U\u{a}")))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "0") (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "8") (str.to_re "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "290") (re.range "0" "9")) (re.++ (str.to_re "291") (re.range "0" "4")) (re.++ (str.to_re "7") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}7") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9")))))))
(check-sat)
