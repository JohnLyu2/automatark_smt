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
(assert (not (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}"))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "T") (str.to_re "Y")) (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "T"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "R"))) (str.to_re "GY") (re.++ (re.union (str.to_re "J") (str.to_re "S")) (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "W") (str.to_re "X"))) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "O") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "X"))) (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y")))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.range "A" "D")) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwProbnymomspyo/zowy\u{a}")))))
(assert (not (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}"))))
(check-sat)

(exit)
