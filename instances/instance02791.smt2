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
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}9") (re.union (re.++ (str.to_re "00") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "02") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "030") (re.range "1" "5")) (re.++ (str.to_re "040") (re.range "1" "5")) (re.++ (str.to_re "050") (re.range "1" "6")) (re.++ (str.to_re "060") (re.range "1" "6")) (str.to_re "0608") (str.to_re "0631") (str.to_re "0638") (str.to_re "0639") (str.to_re "0640") (str.to_re "0650") (str.to_re "0660") (str.to_re "0670") (str.to_re "0680") (re.++ (str.to_re "070") (re.range "1" "4")) (str.to_re "0706") (str.to_re "0710") (str.to_re "0712") (str.to_re "0713") (str.to_re "0715") (str.to_re "0716") (str.to_re "0717") (str.to_re "0723") (re.++ (str.to_re "073") (re.range "1" "3")) (re.++ (str.to_re "074") (re.range "4" "6")) (str.to_re "0747") (str.to_re "0755") (re.++ (str.to_re "080") (re.range "2" "8")) (str.to_re "0810") (re.++ (str.to_re "081") (re.range "3" "5")) (str.to_re "0822") (re.++ (str.to_re "083") (re.range "1" "2")) (str.to_re "0840") (str.to_re "0846") (re.++ (str.to_re "10") (re.range "0" "4") (re.range "0" "9")) (str.to_re "1101") (re.++ (str.to_re "110") (re.range "3" "8")) (re.++ (str.to_re "112") (re.range "5" "6")) (re.++ (str.to_re "120") (re.range "1" "8")) (str.to_re "1214") (re.++ (str.to_re "13") (re.range "0" "6") (re.range "0" "9")) (str.to_re "1372") (str.to_re "1381") (str.to_re "1384") (re.++ (str.to_re "140") (re.union (re.range "1" "3") (str.to_re "|") (re.range "5" "6"))) (str.to_re "1411") (str.to_re "1423") (str.to_re "1436") (re.++ (str.to_re "150") (re.union (re.range "1" "2") (str.to_re "|") (str.to_re "4") (str.to_re "6"))) (str.to_re "1510") (str.to_re "1523") (re.++ (str.to_re "160") (re.union (re.range "1" "2") (str.to_re "|") (re.range "4" "8"))) (str.to_re "1702") (str.to_re "1706") (str.to_re "1711") (re.++ (str.to_re "172") (re.range "2" "4")) (re.++ (str.to_re "173") (re.range "1" "3")) (re.++ (str.to_re "174") (re.union (re.range "0" "1") (str.to_re "|") (re.range "4" "6") (str.to_re "8"))) (re.++ (str.to_re "175") (re.union (str.to_re "0") (str.to_re "|") (re.range "4" "6"))) (re.++ (str.to_re "176") (re.range "5" "8")) (re.++ (str.to_re "177") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "3") (re.range "5" "6"))) (re.++ (str.to_re "178") (re.union (re.range "0" "1") (str.to_re "|") (str.to_re "3"))) (str.to_re "1789") (str.to_re "2621") (str.to_re "3510") (str.to_re "3523") (re.++ (str.to_re "353") (re.union (str.to_re "2") (str.to_re "|") (re.range "4" "6"))) (str.to_re "3543") (str.to_re "3544") (re.++ (str.to_re "355") (re.range "0" "3")) (str.to_re "3563") (str.to_re "3591"))))))
(check-sat)
