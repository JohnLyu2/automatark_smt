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
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Request\u{a}"))))
(assert (not (str.in_re X (re.union (re.++ (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.* (str.to_re "-")) (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.union (str.to_re "A") (str.to_re "a") (str.to_re "B") (str.to_re "b") (str.to_re "C") (str.to_re "c") (str.to_re "E") (str.to_re "e") (str.to_re "G") (str.to_re "g") (str.to_re "H") (str.to_re "h") (str.to_re "J") (str.to_re "j") (str.to_re "K") (str.to_re "k") (str.to_re "L") (str.to_re "l") (str.to_re "M") (str.to_re "m") (str.to_re "N") (str.to_re "n") (str.to_re "P") (str.to_re "p") (str.to_re "R") (str.to_re "r") (str.to_re "S") (str.to_re "s") (str.to_re "T") (str.to_re "t") (str.to_re "V") (str.to_re "v") (str.to_re "X") (str.to_re "x") (str.to_re "Y") (str.to_re "y")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.++ (re.* (str.to_re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to_re " "))) (re.++ (re.* (str.to_re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to_re " ")) (re.* (str.to_re "-")) (re.* (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to_re " ")) (str.to_re "\u{a}"))))))
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/shdoclc.fcgi\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "cyber@yahoo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.com\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xbm/i\u{a}")))))
(check-sat)

(exit)
