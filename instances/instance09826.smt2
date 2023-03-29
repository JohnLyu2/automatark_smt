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
(assert (str.in_re X (re.++ (str.to_re "myInstance.myMethod") (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re "myParam") (re.* re.allchar) (str.to_re ")\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to_re "\u{a}"))))
(assert (not (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{13}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}m\u{0}q\u{0}r\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}"))))
(check-sat)

(exit)
