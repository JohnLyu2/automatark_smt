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
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (re.union (re.range "0" "5") (str.to_re "9")) (str.to_re "\u{5c}") ((_ re.loop 7 7) (str.to_re "d")) (re.union (re.++ (str.to_re "00") (re.range "1" "9")) (re.++ (re.range "0" "9") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re "6\u{5c}") ((_ re.loop 6 6) (str.to_re "d")) (re.union (re.++ (str.to_re "000") (re.range "1" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))))
(assert (not (str.in_re X (re.++ (str.to_re "+86") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}1") (re.union (re.++ (str.to_re "3") (re.range "0" "9")) (str.to_re "45") (str.to_re "47") (re.++ (str.to_re "5") (re.union (re.range "0" "3") (str.to_re ",") (re.range "5" "9"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "2") (re.range "5" "9"))))))))
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "A-311") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finSubject:Basic\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/.mka") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
