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
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "5"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "1"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "3"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1")))))) (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "okt") (str.to_re "nov") (str.to_re "dec")) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "7")))) (str.to_re "sun") (str.to_re "mon") (str.to_re "tue") (str.to_re "wed") (str.to_re "thu") (str.to_re "fri") (str.to_re "sat")))))
(assert (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}")))
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.comp (str.to_re "\u{a}")))) (str.to_re "/gm\u{a}")))))
(check-sat)
