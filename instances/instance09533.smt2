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
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.union (str.to_re "|") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (str.to_re "=")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "AL") (str.to_re "AK") (str.to_re "AS") (str.to_re "AZ") (str.to_re "AR") (str.to_re "CA") (str.to_re "CO") (str.to_re "CT") (str.to_re "DE") (str.to_re "DC") (str.to_re "FM") (str.to_re "FL") (str.to_re "GA") (str.to_re "GU") (str.to_re "HI") (str.to_re "ID") (str.to_re "IL") (str.to_re "IN") (str.to_re "IA") (str.to_re "KS") (str.to_re "KY") (str.to_re "LA") (str.to_re "ME") (str.to_re "MH") (str.to_re "MD") (str.to_re "MA") (str.to_re "MI") (str.to_re "MN") (str.to_re "MS") (str.to_re "MO") (str.to_re "MT") (str.to_re "NE") (str.to_re "NV") (str.to_re "NH") (str.to_re "NJ") (str.to_re "NM") (str.to_re "NY") (str.to_re "NC") (str.to_re "ND") (str.to_re "MP") (str.to_re "OH") (str.to_re "OK") (str.to_re "OR") (str.to_re "PW") (str.to_re "PA") (str.to_re "PR") (str.to_re "RI") (str.to_re "SC") (str.to_re "SD") (str.to_re "TN") (str.to_re "TX") (str.to_re "UT") (str.to_re "VT") (str.to_re "VI") (str.to_re "VA") (str.to_re "WA") (str.to_re "WV") (str.to_re "WI") (str.to_re "WY")) (str.to_re "\u{a}")))))
(assert (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}")))
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
