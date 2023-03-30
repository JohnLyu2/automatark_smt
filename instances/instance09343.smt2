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
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "(0)")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "+")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 4) (re.range "0" "9"))) (str.to_re "0")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "ppoint") (re.opt (re.union (str.to_re "s") (str.to_re "ing") (re.++ (str.to_re "ment") (re.opt (str.to_re "s"))) (str.to_re "ed")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "J") (str.to_re "j")) (str.to_re "oin") (re.union (str.to_re "s") (str.to_re "ed") (str.to_re "ing"))) (re.++ (re.opt (str.to_re " ")) (re.opt (str.to_re "R")) (str.to_re "recruit") (re.opt (re.union (str.to_re "s") (str.to_re "ed") (re.++ (str.to_re "ing") (re.opt (str.to_re "s")))))) (re.++ (str.to_re " ") (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "is") (str.to_re "er")) (re.opt (str.to_re "on")) (str.to_re " dut") (re.opt (re.union (str.to_re "y") (str.to_re "ies")))) (re.++ (re.opt (str.to_re " ")) (re.opt (str.to_re "R")) (str.to_re "replace") (re.opt (re.union (str.to_re "s") (str.to_re "d") (str.to_re "ment")))) (re.++ (str.to_re " ") (re.opt (str.to_re "H")) (str.to_re "hire") (re.opt (re.union (str.to_re "s") (str.to_re "d")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "romot") (re.opt (re.union (str.to_re "ed") (str.to_re "es") (str.to_re "e") (str.to_re "ing")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "D") (str.to_re "d")) (str.to_re "esignate") (re.union (str.to_re "s") (str.to_re "d"))) (re.++ (str.to_re " ") (re.opt (str.to_re "N")) (str.to_re "names") (re.opt (str.to_re "d"))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "h") (re.union (str.to_re "is") (str.to_re "er")))) (str.to_re " ") (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "osition") (re.opt (re.union (str.to_re "ed") (str.to_re "s")))) (re.++ (str.to_re " re") (re.opt (str.to_re "-")) (str.to_re "join") (re.union (str.to_re "ed") (str.to_re "s"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (str.to_re "anagement Changes")) (re.++ (re.union (str.to_re "E") (str.to_re "e")) (str.to_re "xecutive ") (re.union (str.to_re "C") (str.to_re "c")) (str.to_re "hanges")) (str.to_re " reassumes position") (str.to_re " has appointed") (str.to_re " appointment of") (str.to_re " was promoted to") (str.to_re " has announced changes to") (str.to_re " will be headed") (str.to_re " will succeed") (str.to_re " has succeeded") (str.to_re " to name") (str.to_re " has named") (str.to_re " was promoted to") (str.to_re " has hired") (re.++ (str.to_re " bec") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "me") (re.opt (str.to_re "s"))) (re.++ (str.to_re " ") (re.union (str.to_re "to") (str.to_re "will")) (str.to_re " become")) (str.to_re " reassumes position") (str.to_re " has been elevated") (re.++ (str.to_re " assumes the additional r") (re.union (str.to_re "ole") (re.++ (str.to_re "esponsibilit") (re.union (str.to_re "ies") (str.to_re "y"))))) (str.to_re " has been elected") (str.to_re " transferred") (str.to_re " has been given the additional") (str.to_re " in a short while") (re.++ (str.to_re " stepp") (re.union (str.to_re "ed") (str.to_re "ing")) (str.to_re " down")) (str.to_re " left the company") (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " moved")) (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " retired")) (re.++ (str.to_re " ") (re.opt (re.union (str.to_re "has") (str.to_re "he") (str.to_re "she"))) (str.to_re " resign") (re.union (str.to_re "s") (str.to_re "ing") (str.to_re "ed"))) (re.++ (str.to_re " ") (re.union (str.to_re "D") (str.to_re "d")) (str.to_re "eceased")) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "T") (str.to_re "t")) (str.to_re "erminat") (re.union (str.to_re "ed") (str.to_re "s") (str.to_re "ing"))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "F") (str.to_re "f")) (str.to_re "ire") (re.union (str.to_re "s") (str.to_re "d") (str.to_re "ing"))) (str.to_re " left abruptly") (str.to_re " stopped working") (re.++ (str.to_re " indict") (re.union (str.to_re "ed") (str.to_re "s"))) (str.to_re " in a short while") (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " notified")) (str.to_re " will leave") (str.to_re " left the") (str.to_re " agreed to leave") (re.++ (str.to_re " ") (re.opt (str.to_re "has been")) (str.to_re " elected")) (re.++ (str.to_re " resignation") (re.opt (str.to_re "s")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
