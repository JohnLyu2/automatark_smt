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
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "-02-29")) (re.++ (re.union (re.++ (str.to_re "20") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "-") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "-31")) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (str.to_re "29") (str.to_re "30")))))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}"))))
(assert (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}//") (re.* re.allchar)))))
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "sun") (re.opt (str.to_re "day"))) (re.++ (str.to_re "mon") (re.opt (str.to_re "day"))) (re.++ (str.to_re "tue") (re.opt (str.to_re "sday"))) (re.++ (str.to_re "wed") (re.opt (str.to_re "nesday"))) (re.++ (str.to_re "thu") (re.opt (str.to_re "rsday"))) (re.++ (str.to_re "fri") (re.opt (str.to_re "day"))) (re.++ (str.to_re "sat") (re.opt (str.to_re "urday")))) (re.opt (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.++ (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (str.to_re "may") (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember")))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.opt (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}") (re.range "1" "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)

(exit)
