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
(assert (str.in_re X (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "euc") (re.union (str.to_re "kr") (str.to_re "jpms"))) (str.to_re "binary") (str.to_re "greek") (str.to_re "tis620") (str.to_re "hebrew") (str.to_re "ascii") (str.to_re "swe7") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u"))) (re.++ (re.union (str.to_re "u") (str.to_re "keyb")) (str.to_re "cs2")) (re.++ (re.union (str.to_re "dec") (str.to_re "hp") (str.to_re "utf") (str.to_re "geostd") (str.to_re "armscii")) (str.to_re "8")) (re.++ (str.to_re "gb") (re.union (str.to_re "k") (str.to_re "2312"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "932") (re.++ (str.to_re "125") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "6") (str.to_re "7"))))) (re.++ (str.to_re "latin") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "5") (str.to_re "7"))) (re.++ (re.union (str.to_re "u") (str.to_re "s")) (str.to_re "jis")) (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
