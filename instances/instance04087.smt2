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
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "Z")) (re.opt (str.to_re "S")) (re.opt (str.to_re "X"))) (re.++ (str.to_re "DA") (re.opt (str.to_re "L")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "S"))) (str.to_re "DE") (re.++ (str.to_re "DE") (re.union (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "H")) (re.opt (str.to_re "I")) (re.opt (str.to_re "O")) (re.opt (str.to_re "S"))) (re.++ (str.to_re "DI") (re.opt (re.union (str.to_re "A") (str.to_re "E")))) (re.++ (str.to_re "DO") (re.opt (str.to_re "S"))) (str.to_re "DU") (re.++ (str.to_re "EI") (re.opt (str.to_re "T")) (re.opt (str.to_re "N")) (re.opt (str.to_re "E"))) (re.++ (str.to_re "EL") (re.opt (str.to_re "S"))) (str.to_re "EN") (re.++ (str.to_re "ET") (re.opt (str.to_re "T"))) (re.++ (str.to_re "HA") (re.opt (str.to_re "I"))) (re.++ (str.to_re "HE") (re.union (str.to_re "N") (str.to_re "T"))) (re.++ (str.to_re "HI") (re.opt (str.to_re "N")) (re.opt (str.to_re "A")) (re.opt (str.to_re "I")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "HOI") (str.to_re "IL") (str.to_re "IM") (str.to_re "ISA") (str.to_re "KA") (str.to_re "KE") (str.to_re "LAS") (re.++ (str.to_re "LE") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "H")) (str.to_re "I") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "O")) (str.to_re "U")) (re.++ (str.to_re "M") (re.opt (str.to_re "A")) (str.to_re "C")) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "Y"))) (re.++ (str.to_re "O") (re.union (str.to_re "I") (str.to_re "P"))) (str.to_re "SI") (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (re.++ (str.to_re "U") (re.union (str.to_re "M") (str.to_re "N")) (re.opt (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O") (str.to_re "S")))) (str.to_re "VAN") (re.++ (str.to_re "VE") (re.union (str.to_re "L") (str.to_re "R"))) (re.++ (str.to_re "VO") (re.union (str.to_re "M") (str.to_re "N"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "N") (str.to_re "R"))) (re.++ (str.to_re "ZU") (re.opt (re.union (str.to_re "M") (str.to_re "R"))))) (str.to_re " "))) (re.opt (re.++ (re.union (re.++ (str.to_re "LA") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "DE") (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "ZU")) (str.to_re " "))) (re.+ (re.union (re.range "A" "Z") (str.to_re "0") (str.to_re "/") (str.to_re "'") (str.to_re ".") (str.to_re "-"))) (str.to_re " ") (re.opt (re.union (str.to_re "SR") (str.to_re "JR") (re.++ (str.to_re "I") (re.+ (str.to_re "I")) (re.opt (str.to_re "V"))) (re.++ (str.to_re "V") (re.+ (str.to_re "I"))) (re.++ (re.range "1" "9") (re.+ (re.union (str.to_re "S") (str.to_re "T") (str.to_re "R") (str.to_re "D") (str.to_re "H")))))) (str.to_re "\u{a}"))))
(check-sat)
