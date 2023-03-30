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
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re "p") (str.to_re "P") (str.to_re "c") (str.to_re "C") (str.to_re "h") (str.to_re "H") (str.to_re "f") (str.to_re "F") (str.to_re "a") (str.to_re "A") (str.to_re "t") (str.to_re "T") (str.to_re "b") (str.to_re "B") (str.to_re "l") (str.to_re "L") (str.to_re "j") (str.to_re "J") (str.to_re "g") (str.to_re "G")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "9"))))))
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xap/i\u{a}")))))
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "TDT") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "\u{a}") ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "EQN") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "MEA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DIM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMP") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "RNG") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "SEL") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "FTX") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DGS") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "EQA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "NAD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "EQD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))))
(check-sat)
