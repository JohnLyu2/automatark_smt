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
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xcf/i\u{a}")))))
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "N") (str.to_re "n") (str.to_re "S") (str.to_re "s")) (str.to_re " ") (re.+ (re.range "0" "9")) (re.union (str.to_re "W") (str.to_re "w") (str.to_re "E") (str.to_re "e")) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "2"))) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "=\u{a}\u{a}\u{a}\u{a}\u{a}\u{a}\u{a}LogName=Security") (re.* re.allchar) (str.to_re "SourceName=") (re.* re.allchar) (str.to_re "EventCode=") (re.* re.allchar) (str.to_re "EventType=") (re.* re.allchar) (str.to_re "Type=") (re.union (str.to_re "Success Audit") (str.to_re "Information")) (re.* re.allchar) (str.to_re "ComputerName=") (re.* re.allchar) (str.to_re "HOSTNAME") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3")))))
(check-sat)

(exit)
