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
(assert (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HELO") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "0" "9") ((_ re.loop 500 500) (re.union (re.range "0" "9") (str.to_re "."))) (str.to_re "/\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.range "0" "9")) (str.to_re "stale") (re.+ (re.range "0" "9")) (str.to_re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\u{a}"))))
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "+") (str.to_re "-") (str.to_re "?") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tps://")) (re.++ (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".") (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".")) (str.to_re "www.") (str.to_re ".tv") (str.to_re ".ac") (str.to_re ".com") (str.to_re ".edu") (str.to_re ".gov") (str.to_re ".int") (str.to_re ".mil") (str.to_re ".net") (str.to_re ".org") (str.to_re ".biz") (str.to_re ".info") (str.to_re ".name") (str.to_re ".pro") (str.to_re ".museum") (str.to_re ".co")) (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "%") (str.to_re "+") (str.to_re "-") (str.to_re "=") (str.to_re "&") (str.to_re "?") (str.to_re ":") (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ",") (str.to_re "|") (str.to_re "~") (str.to_re ";") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
