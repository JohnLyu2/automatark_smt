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
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "-") (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re ";")) (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "-") (re.union (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to_re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to_re "\u{a}")))))
(assert (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}")))
(assert (str.in_re X (re.++ (re.+ (re.range "0" "1")) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "194") re.allchar (str.to_re "192") re.allchar (str.to_re "14") re.allchar (str.to_re "125")) (re.++ (str.to_re "202") re.allchar (str.to_re "75") re.allchar (str.to_re "58") re.allchar (str.to_re "179")) (re.++ (str.to_re "flashupdates") re.allchar (str.to_re "info")) (re.++ (str.to_re "nvidiadrivers") re.allchar (str.to_re "info")) (re.++ (str.to_re "nvidiasoft") re.allchar (str.to_re "info")) (re.++ (str.to_re "nvidiastream") re.allchar (str.to_re "info")) (re.++ (str.to_re "rendercodec") re.allchar (str.to_re "info")) (re.++ (str.to_re "syncstream") re.allchar (str.to_re "info")) (re.++ (str.to_re "videosync") re.allchar (str.to_re "info"))) (str.to_re "/smiH\u{a}")))))
(check-sat)
