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
(assert (not (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{a}"))))
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "3") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6"))) (re.++ (str.to_re "8") (re.union (str.to_re "4") (str.to_re "6"))) (re.++ (str.to_re "9") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "6"))))) (re.++ (str.to_re "1") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "4"))) (re.++ (str.to_re "3") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "6") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "5") (str.to_re "8"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "9") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "6"))))) (re.++ (str.to_re "2") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "3") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "2") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "3") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "4") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "6") (str.to_re "8"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "5") (str.to_re "6"))) (str.to_re "88") (re.++ (str.to_re "9") (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (str.to_re "3") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "3") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "7") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8") (str.to_re "9"))) (str.to_re "92"))) (re.++ (str.to_re "4") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "2") (re.union (str.to_re "2") (str.to_re "6") (str.to_re "8"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "6") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "4"))) (re.++ (str.to_re "9") (re.union (str.to_re "2") (str.to_re "6") (str.to_re "8") (str.to_re "9"))))) (re.++ (str.to_re "5") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "3"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "6") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6"))) (re.++ (str.to_re "9") (re.union (str.to_re "1") (str.to_re "8"))))) (re.++ (str.to_re "6") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "6"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "4") (re.union (str.to_re "2") (str.to_re "3") (str.to_re "6"))) (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "9"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "3") (str.to_re "6"))) (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "8") (re.union (str.to_re "2") (str.to_re "6") (str.to_re "8"))) (re.++ (str.to_re "9") (re.union (str.to_re "0") (str.to_re "4"))))) (re.++ (str.to_re "7") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "6"))) (str.to_re "24") (re.++ (str.to_re "3") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "7") (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "9") (re.union (str.to_re "2") (str.to_re "5") (str.to_re "6") (str.to_re "8"))))) (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (str.to_re "4") (str.to_re "7"))) (str.to_re "26") (re.++ (str.to_re "3") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4"))) (str.to_re "40") (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "8"))) (re.++ (str.to_re "6") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "76") (re.++ (str.to_re "8") (re.union (str.to_re "2") (str.to_re "7"))) (str.to_re "94")))) (str.to_re "\u{a}")))))
(assert (not (str.in_re X (str.to_re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "max-www.u88.cn\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "connection\u{a}"))))
(check-sat)

(exit)
