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
(assert (str.in_re X (re.++ (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (str.to_re "\u{22}")) (str.to_re "cid") (re.* (str.to_re " ")) (str.to_re ":") (re.* (str.to_re " ")) (re.+ (re.union (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re " "))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
(assert (not (str.in_re X (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "@") (re.union (re.++ ((_ re.loop 2 255) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".") (re.union (str.to_re "ad") (str.to_re "ae") (str.to_re "af") (str.to_re "ag") (str.to_re "ai") (str.to_re "al") (str.to_re "am") (str.to_re "an") (str.to_re "ao") (str.to_re "aq") (str.to_re "ar") (str.to_re "as") (str.to_re "at") (str.to_re "au") (str.to_re "aw") (str.to_re "az") (str.to_re "ba") (str.to_re "bb") (str.to_re "bd") (str.to_re "be") (str.to_re "bf") (str.to_re "bg") (str.to_re "bh") (str.to_re "bi") (str.to_re "bj") (str.to_re "bm") (str.to_re "bn") (str.to_re "bo") (str.to_re "br") (str.to_re "bs") (str.to_re "bt") (str.to_re "bv") (str.to_re "bw") (str.to_re "by") (str.to_re "bz") (str.to_re "ca") (str.to_re "cc") (str.to_re "cf") (str.to_re "cg") (str.to_re "ch") (str.to_re "ci") (str.to_re "ck") (str.to_re "cl") (str.to_re "cm") (str.to_re "cn") (str.to_re "co") (str.to_re "cr") (str.to_re "cu") (str.to_re "cv") (str.to_re "cx") (str.to_re "cy") (str.to_re "cz") (str.to_re "de") (str.to_re "di") (str.to_re "dk") (str.to_re "dm") (str.to_re "do") (str.to_re "dz") (str.to_re "ec") (str.to_re "ee") (str.to_re "eg") (str.to_re "eh") (str.to_re "er") (str.to_re "es") (str.to_re "et") (str.to_re "fi") (str.to_re "fj") (str.to_re "fk") (str.to_re "fm") (str.to_re "fo") (str.to_re "fr") (str.to_re "ga") (str.to_re "gb") (str.to_re "gd") (str.to_re "ge") (str.to_re "gf") (str.to_re "gh") (str.to_re "gi") (str.to_re "gl") (str.to_re "gm") (str.to_re "gn") (str.to_re "gp") (str.to_re "gq") (str.to_re "gr") (str.to_re "gs") (str.to_re "gt") (str.to_re "gu") (str.to_re "gw") (str.to_re "gy") (str.to_re "hk") (str.to_re "hm") (str.to_re "hn") (str.to_re "hr") (str.to_re "ht") (str.to_re "hu") (str.to_re "id") (str.to_re "ie") (str.to_re "il") (str.to_re "in") (str.to_re "io") (str.to_re "iq") (str.to_re "ir") (str.to_re "is") (str.to_re "it") (str.to_re "jo") (str.to_re "jm") (str.to_re "jp") (str.to_re "ke") (str.to_re "kg") (str.to_re "kh") (str.to_re "ki") (str.to_re "km") (str.to_re "kn") (str.to_re "kp") (str.to_re "kr") (str.to_re "kw") (str.to_re "ky") (str.to_re "kz") (str.to_re "la") (str.to_re "lb") (str.to_re "lc") (str.to_re "li") (str.to_re "lk") (str.to_re "lr") (str.to_re "ls") (str.to_re "lt") (str.to_re "lu") (str.to_re "lv") (str.to_re "ly") (str.to_re "ma") (str.to_re "mc") (str.to_re "md") (str.to_re "mg") (str.to_re "mh") (str.to_re "mk") (str.to_re "ml") (str.to_re "mm") (str.to_re "mn") (str.to_re "mo") (str.to_re "mp") (str.to_re "mq") (str.to_re "mr") (str.to_re "ms") (str.to_re "mt") (str.to_re "mu") (str.to_re "mv") (str.to_re "mw") (str.to_re "mx") (str.to_re "my") (str.to_re "mz") (str.to_re "an") (str.to_re "nc") (str.to_re "ne") (str.to_re "nf") (str.to_re "ng") (str.to_re "ni") (str.to_re "nl") (str.to_re "no") (str.to_re "np") (str.to_re "nr") (str.to_re "nt") (str.to_re "nu") (str.to_re "nz") (str.to_re "om") (str.to_re "pa") (str.to_re "pe") (str.to_re "pf") (str.to_re "pg") (str.to_re "ph") (str.to_re "pk") (str.to_re "pl") (str.to_re "pm") (str.to_re "pn") (str.to_re "pr") (str.to_re "pt") (str.to_re "pw") (str.to_re "py") (str.to_re "qa") (str.to_re "re") (str.to_re "ro") (str.to_re "ru") (str.to_re "rw") (str.to_re "sa") (str.to_re "sb") (str.to_re "sc") (str.to_re "sd") (str.to_re "se") (str.to_re "sq") (str.to_re "sh") (str.to_re "si") (str.to_re "sj") (str.to_re "sk") (str.to_re "sl") (str.to_re "sm") (str.to_re "sn") (str.to_re "so") (str.to_re "sr") (str.to_re "st") (str.to_re "su") (str.to_re "sv") (str.to_re "sy") (str.to_re "sz") (str.to_re "tc") (str.to_re "td") (str.to_re "tf") (str.to_re "tg") (str.to_re "th") (str.to_re "tj") (str.to_re "tk") (str.to_re "tm") (str.to_re "tn") (str.to_re "to") (str.to_re "tp") (str.to_re "tr") (str.to_re "tt") (str.to_re "tv") (str.to_re "tw") (str.to_re "tz") (str.to_re "ua") (str.to_re "ug") (str.to_re "uk") (str.to_re "um") (str.to_re "us") (str.to_re "uy") (str.to_re "uz") (str.to_re "va") (str.to_re "vc") (str.to_re "ve") (str.to_re "vg") (str.to_re "vi") (str.to_re "vn") (str.to_re "vu") (str.to_re "wf") (str.to_re "ws") (str.to_re "ye") (str.to_re "yt") (str.to_re "yu") (str.to_re "za") (str.to_re "zm") (str.to_re "zr") (str.to_re "zw") (str.to_re "arpa") (str.to_re "arts") (str.to_re "biz") (str.to_re "com") (str.to_re "edu") (str.to_re "firm") (str.to_re "gov") (str.to_re "info") (str.to_re "int") (str.to_re "mil") (str.to_re "nato") (str.to_re "net") (str.to_re "nom") (str.to_re "org") (str.to_re "rec") (str.to_re "store") (str.to_re "web"))) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9") (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9") (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "0" "9")))) (str.to_re "\u{a}") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".") (re.* (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))))
(check-sat)

(exit)
