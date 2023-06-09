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
(assert (str.in_re X (re.union (re.++ (str.to_re "SELECT") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (str.to_re "*") (str.to_re ")") (str.to_re "(") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "FROM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.union (re.++ (re.union (str.to_re "one") (re.++ (str.to_re "t") (re.union (str.to_re "en") (str.to_re "wo") (str.to_re "hree") (str.to_re "welve") (str.to_re "hirteen"))) (str.to_re "evelen") (re.++ (re.union (re.++ (str.to_re "f") (re.union (str.to_re "our") (str.to_re "ive"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eight") (str.to_re "nine")) (re.opt (str.to_re "teen")))) (re.opt (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hundred") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "-") (re.union (str.to_re "one") (re.++ (str.to_re "t") (re.union (str.to_re "wo") (str.to_re "hree"))) (re.++ (str.to_re "f") (re.union (str.to_re "our") (str.to_re "ive"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eight") (str.to_re "nine")))) (re.union (re.++ (str.to_re "t") (re.union (str.to_re "wen") (str.to_re "hir"))) (re.++ (str.to_re "f") (re.union (str.to_re "or") (str.to_re "if"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eigh") (str.to_re "nin")) (str.to_re "ty"))) (str.to_re " ") (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "hundred") (str.to_re "thousand") (re.++ (re.union (re.++ (re.union (str.to_re "t") (str.to_re "quad")) (str.to_re "r")) (str.to_re "m") (str.to_re "b")) (str.to_re "illion"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "and") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "//MacApp/") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re ".png\u{d}\u{a}") (re.+ (re.comp (str.to_re "\u{89}"))) (str.to_re "\u{89}PNG/Psmi\u{a}")))))
(check-sat)

(exit)
