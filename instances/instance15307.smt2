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
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "Mo") (re.opt (re.++ (str.to_re "n") (re.opt (str.to_re "day"))))) (re.++ (str.to_re "Tu") (re.opt (re.++ (str.to_re "e") (re.opt (str.to_re "sday"))))) (re.++ (str.to_re "We") (re.opt (re.++ (str.to_re "d") (re.opt (str.to_re "nesday"))))) (re.++ (str.to_re "Th") (re.opt (re.++ (str.to_re "u") (re.opt (str.to_re "rsday"))))) (re.++ (str.to_re "Fr") (re.opt (re.++ (str.to_re "i") (re.opt (str.to_re "day"))))) (re.++ (str.to_re "Sa") (re.opt (re.++ (str.to_re "t") (re.opt (str.to_re "urday"))))) (re.++ (str.to_re "Su") (re.opt (re.++ (str.to_re "n") (re.opt (str.to_re "day")))))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (str.to_re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\u{a}"))))
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:\u{a}"))))
(check-sat)

(exit)
