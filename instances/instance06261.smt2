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
(assert (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}"))))
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "050") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "052") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "054") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "057") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "077") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "02") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "03") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "04") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "08") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "09") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
