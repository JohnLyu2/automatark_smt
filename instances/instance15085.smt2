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
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0") re.allchar (str.to_re "0") re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0") re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (str.to_re "255") re.allchar (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")))) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MAIL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FROM:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "()") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "{/i\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (str.to_re "www.eblocs.com\u{1b}") (re.range "0" "9") (str.to_re "/iis2ebs.asp") (re.range "0" "9") (str.to_re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
(check-sat)
