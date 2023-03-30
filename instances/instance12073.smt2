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
(assert (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</textarea>\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "EvilFTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".bmpfilename=\u{22}\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:rprpgbnrppb/ci\u{a}"))))
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "AT") (re.opt (str.to_re " ")) (str.to_re "U") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "BE") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "BG") (re.opt (str.to_re " ")) ((_ re.loop 9 10) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.++ (str.to_re "CZ") (re.opt (str.to_re " ")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "DE") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "DK") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "EE") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "EL") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "ES") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "FI") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "HU") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "IT") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to_re "LT") (re.opt (str.to_re " ")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to_re "LU") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "LV") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to_re "MT") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "NL") (re.opt (str.to_re " ")) ((_ re.loop 12 12) (re.union (re.range "0" "9") (str.to_re "B")))) (re.++ (str.to_re "PL") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "PT") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "RO") (re.opt (str.to_re " ")) ((_ re.loop 2 10) (re.range "0" "9"))) (re.++ (str.to_re "SE") (re.opt (str.to_re " ")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "SI") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "SK") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
