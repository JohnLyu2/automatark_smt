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
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maki/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}(") (re.union (str.to_re ")") (re.++ (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))))))
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") ((_ re.loop 1 9) (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 1 9) (re.range "0" "9"))) (re.++ (str.to_re "20") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "213") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "2146") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "21473") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to_re "214747") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2147482") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "21474835") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "214748364") (re.range "0" "7"))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}"))))
(check-sat)

(exit)
