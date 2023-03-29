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
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "~") (str.to_re "="))) (str.to_re "/I\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}"))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R") (str.to_re "A") (str.to_re "E") (str.to_re "P") (str.to_re "l") (str.to_re "k") (str.to_re "s") (str.to_re "z") (str.to_re "r") (str.to_re "a") (str.to_re "e") (str.to_re "p"))) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T") (str.to_re "a") (str.to_re "o") (str.to_re "t"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "C") (str.to_re "e") (str.to_re "c"))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "L") (str.to_re "M") (str.to_re "l") (str.to_re "m"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "A") (str.to_re "U") (str.to_re "a") (str.to_re "u"))) (re.++ (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "a") (str.to_re "d") (str.to_re "l") (str.to_re "n"))) (re.++ (re.union (str.to_re "K") (str.to_re "k")) (re.union (str.to_re "S") (str.to_re "Y") (str.to_re "s") (str.to_re "y"))) (re.++ (re.union (str.to_re "L") (str.to_re "l")) (re.union (str.to_re "A") (str.to_re "a"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "I") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "S") (str.to_re "T") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "i") (str.to_re "n") (str.to_re "o") (str.to_re "p") (str.to_re "s") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "V") (str.to_re "Y") (str.to_re "c") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "j") (str.to_re "m") (str.to_re "v") (str.to_re "y"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R") (str.to_re "h") (str.to_re "k") (str.to_re "r"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "A") (str.to_re "R") (str.to_re "W") (str.to_re "a") (str.to_re "r") (str.to_re "w"))) (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "N") (str.to_re "X") (str.to_re "n") (str.to_re "x"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "V") (str.to_re "v")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "T") (str.to_re "a") (str.to_re "i") (str.to_re "t"))) (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "V") (str.to_re "Y") (str.to_re "a") (str.to_re "i") (str.to_re "v") (str.to_re "y")))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgiwwwUser-Agent:\u{a}")))))
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
