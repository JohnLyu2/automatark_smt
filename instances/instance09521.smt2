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
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<?php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "?>")))))
(assert (not (str.in_re X (str.to_re "Host:Host:sidebar.activeshopper.com\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "Server") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newsSoftActivity\u{13}password;1;Optix\u{a}"))))
(assert (str.in_re X (str.to_re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\u{13}ReportMyuntil\u{a}")))
(assert (str.in_re X (re.union (re.++ (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "general") (str.to_re "unicode") (str.to_re "roman") (str.to_re "slovak") (str.to_re "czech") (str.to_re "icelandic") (re.++ (re.union (str.to_re "latv") (str.to_re "pers")) (str.to_re "ian")) (re.++ (re.union (str.to_re "dan") (str.to_re "pol") (str.to_re "span") (str.to_re "swed") (str.to_re "turk")) (str.to_re "ish")) (str.to_re "spanish2") (re.++ (re.union (str.to_re "esto") (str.to_re "lithua") (str.to_re "roma") (str.to_re "slove")) (str.to_re "nian_ci"))) (str.to_re "u") (re.union (str.to_re "cs2") (str.to_re "tf8"))) (re.++ (re.union (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "1256"))) (str.to_re "armscii8") (str.to_re "geostd8") (str.to_re "ascii") (str.to_re "keybcs2") (str.to_re "greek") (str.to_re "hebrew") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u")))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "general_ci"))) (re.++ (re.union (str.to_re "dec8") (str.to_re "swe7")) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "swedish_ci"))) (re.++ (re.union (str.to_re "hp8") (str.to_re "latin5")) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "english_ci"))) (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "gb") (re.union (str.to_re "2312") (str.to_re "k")))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "chinese_ci"))) (re.++ (re.union (str.to_re "cp932") (str.to_re "eucjpms") (re.++ (re.union (str.to_re "s") (str.to_re "u")) (str.to_re "jis"))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "japanese_ci"))) (re.++ (str.to_re "euckr_") (re.union (str.to_re "bin") (str.to_re "korean_ci"))) (re.++ (str.to_re "tis620_") (re.union (str.to_re "bin") (str.to_re "thai_ci"))) (re.++ (str.to_re "latin1_") (re.union (str.to_re "bin") (re.++ (re.union (re.++ (re.union (str.to_re "dan") (str.to_re "span") (str.to_re "swed")) (str.to_re "ish")) (re.++ (str.to_re "german") (re.union (str.to_re "1") (str.to_re "2")))) (str.to_re "_ci")) (re.++ (str.to_re "general_c") (re.union (str.to_re "i") (str.to_re "s"))))) (re.++ (str.to_re "cp1250_") (re.union (str.to_re "bin") (str.to_re "czech_cs") (str.to_re "general_ci"))) (re.++ (str.to_re "latin2_") (re.union (str.to_re "bin") (str.to_re "czech_cs") (re.++ (re.union (str.to_re "general") (str.to_re "hungarian") (str.to_re "croatian")) (str.to_re "_ci")))) (re.++ (str.to_re "cp1257_") (re.union (str.to_re "bin") (re.++ (re.union (str.to_re "general") (str.to_re "lithuanian")) (str.to_re "_ci")))) (re.++ (str.to_re "latin7_") (re.union (str.to_re "bin") (re.++ (str.to_re "general_c") (re.union (str.to_re "i") (str.to_re "s"))) (str.to_re "estonian_cs"))) (re.++ (str.to_re "\u{a}cp1251_") (re.union (str.to_re "bin") (re.++ (re.union (str.to_re "general") (str.to_re "bulgarian") (str.to_re "ukrainian")) (str.to_re "_ci")) (str.to_re "general_cs"))))))
(check-sat)

(exit)
