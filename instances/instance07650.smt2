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
(assert (str.in_re X (re.union (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z") (str.to_re "&"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "31")))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9")))) (re.++ (re.union (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "31")))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229"))) ((_ re.loop 0 3) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9"))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (str.to_re ":\u{a}") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to_re " ") (re.union (str.to_re "AM") (str.to_re "PM"))))))
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (re.++ (re.union (str.to_re "/") (str.to_re "b") (str.to_re "p")) (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "p") (re.range "a" "z") (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "b") (re.comp (str.to_re "r")) (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "br") (re.range "a" "z") (re.* (re.union (str.to_re ">") (str.to_re "<"))) (str.to_re ">")) (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "b") (str.to_re "p"))) (str.to_re ">")) (re.++ (str.to_re "/p") (re.+ (re.range "a" "z")) (str.to_re ">")) (re.++ (str.to_re "/b") (re.+ (re.comp (str.to_re "r"))) (str.to_re ">")) (re.++ (str.to_re "/br") (re.+ (re.range "a" "z")) (str.to_re ">\u{a}")))))))
(assert (not (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}"))))
(check-sat)

(exit)
