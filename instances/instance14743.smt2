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
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "toX-Mailer:\u{13}Logsmax-Cookie:AppName\u{a}")))))
(assert (str.in_re X (re.union (str.to_re "EMA") (str.to_re "QCY") (str.to_re "SQZ") (str.to_re "ORM") (str.to_re "NQT") (str.to_re "WTN") (str.to_re "CBG") (str.to_re "QFO") (str.to_re "BEQ") (str.to_re "LKZ") (str.to_re "LTN") (str.to_re "KNF") (str.to_re "MHZ") (str.to_re "NWI") (str.to_re "CLF") (str.to_re "QUY") (str.to_re "SEN") (str.to_re "STN") (str.to_re "BEQ") (str.to_re "BQH") (str.to_re "LHR") (str.to_re "NHT") (str.to_re "LCY") (str.to_re "MME") (str.to_re "NCL") (str.to_re "BWF") (str.to_re "BLK") (str.to_re "CAX") (str.to_re "LPL") (str.to_re "MAN") (str.to_re "BBP") (str.to_re "BEX") (str.to_re "BZZ") (str.to_re "LGW") (str.to_re "SOU") (str.to_re "FAB") (str.to_re "OXF") (str.to_re "ESH") (str.to_re "QLA") (str.to_re "LYX") (str.to_re "KRH") (str.to_re "ODH") (str.to_re "RCS") (str.to_re "QUC") (str.to_re "BBS") (str.to_re "GLO") (str.to_re "EXT") (str.to_re "FFD") (str.to_re "BOH") (str.to_re "LYE") (str.to_re "NQY") (str.to_re "LEQ") (str.to_re "ISC") (str.to_re "UPV") (str.to_re "BRS") (str.to_re "YEO") (str.to_re "CVT") (str.to_re "BHX") (str.to_re "DSA") (str.to_re "HUY") (str.to_re "LBA") (str.to_re "HRT") (str.to_re "BFS") (str.to_re "BHD") (str.to_re "LDY") (str.to_re "ENK") (str.to_re "ABZ") (str.to_re "OBN") (str.to_re "BEB") (str.to_re "BRR") (str.to_re "CAL") (str.to_re "COL") (str.to_re "CSA") (str.to_re "NRL") (str.to_re "INV") (str.to_re "SCS") (str.to_re "DND") (str.to_re "LSI") (str.to_re "EOI") (str.to_re "EDI") (str.to_re "FIE") (str.to_re "FOA") (str.to_re "ILY") (str.to_re "FSS") (str.to_re "NDY") (str.to_re "ADX") (str.to_re "LMO") (str.to_re "OUK") (str.to_re "PSV") (str.to_re "PPW") (str.to_re "PIK") (str.to_re "GLA") (str.to_re "KOI") (str.to_re "PSL") (str.to_re "SYY") (str.to_re "SKL") (str.to_re "SOY") (str.to_re "LWK") (str.to_re "TRE") (str.to_re "WRY") (str.to_re "WHS") (str.to_re "WIC") (str.to_re "HAW") (str.to_re "CEG") (str.to_re "VLY") (str.to_re "SWS") (str.to_re "CWL") (str.to_re "DGX") (str.to_re "ACI") (str.to_re "GCI") (str.to_re "IOM") (str.to_re "JER\u{a}"))))
(assert (str.in_re X (re.++ (str.to_re "/.xspf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(assert (not (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTP\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "NavExcel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
(check-sat)

(exit)
