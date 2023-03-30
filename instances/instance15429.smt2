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
(set-info :status unknown)

(declare-const X String)
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".torrent/i\u{a}")))))
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "n") (str.to_re "N"))) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "r") (str.to_re "R"))) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "l") (str.to_re "L"))) (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "g") (str.to_re "G"))) (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "c") (str.to_re "C")) (re.union (str.to_re "t") (str.to_re "T"))) (re.++ (re.union (str.to_re "d") (str.to_re "D")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "c") (str.to_re "C"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30")) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "r") (str.to_re "R"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "n") (str.to_re "N"))) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "v") (str.to_re "V"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "-") (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "b") (str.to_re "B")))) (str.to_re "-20") (re.union (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))))) (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "n") (str.to_re "N"))) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "r") (str.to_re "R"))) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "l") (str.to_re "L"))) (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "g") (str.to_re "G"))) (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "c") (str.to_re "C")) (re.union (str.to_re "t") (str.to_re "T"))) (re.++ (re.union (str.to_re "d") (str.to_re "D")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "c") (str.to_re "C"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30")) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "r") (str.to_re "R"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "u") (str.to_re "U")) (re.union (str.to_re "n") (str.to_re "N"))) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "v") (str.to_re "V"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "-") (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "e") (str.to_re "E")) (re.union (str.to_re "b") (str.to_re "B")))) (str.to_re "-20") (re.union (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")))))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Mycount.yok.comProBuilt-inBasicYWRtaW46cGFzc3dvcmQ\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "<!doctype") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.+ (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.opt (re.++ (re.+ (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.opt (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (str.to_re ">\u{a}")))))
(check-sat)
