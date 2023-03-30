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
(set-info :status sat)

(declare-const X String)
(assert (not (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}")))))
(assert (not (str.in_re X (re.++ (str.to_re "(") (re.opt (str.to_re "+")) (re.opt (str.to_re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ")") (re.opt (str.to_re " ")) (str.to_re "(") (re.opt (str.to_re "+")) (re.opt (str.to_re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to_re "AF") (str.to_re "AX") (str.to_re "AL") (str.to_re "DZ") (str.to_re "AS") (str.to_re "AD") (str.to_re "AO") (str.to_re "AI") (str.to_re "AQ") (str.to_re "AG") (str.to_re "AR") (str.to_re "AM") (str.to_re "AW") (str.to_re "AU") (str.to_re "AZ") (str.to_re "BS") (str.to_re "BH") (str.to_re "BD") (str.to_re "BB") (str.to_re "BY") (str.to_re "BE") (str.to_re "BZ") (str.to_re "BJ") (str.to_re "BM") (str.to_re "BT") (str.to_re "BO") (str.to_re "BA") (str.to_re "BW") (str.to_re "BV") (str.to_re "BR") (str.to_re "IO") (str.to_re "BN") (str.to_re "BG") (str.to_re "BF") (str.to_re "BI") (str.to_re "KH") (str.to_re "CM") (str.to_re "CA") (str.to_re "CV") (str.to_re "KY") (str.to_re "CF") (str.to_re "TD") (str.to_re "CL") (str.to_re "CN") (str.to_re "CX") (str.to_re "CC") (str.to_re "CO") (str.to_re "KM") (str.to_re "CG") (str.to_re "CD") (str.to_re "CK") (str.to_re "CR") (str.to_re "CI") (str.to_re "HR") (str.to_re "CU") (str.to_re "CY") (str.to_re "CZ") (str.to_re "DK") (str.to_re "DJ") (str.to_re "DM") (str.to_re "DO") (str.to_re "EC") (str.to_re "EG") (str.to_re "SV") (str.to_re "GQ") (str.to_re "ER") (str.to_re "EE") (str.to_re "ET") (str.to_re "FK") (str.to_re "FO") (str.to_re "FJ") (str.to_re "FI") (str.to_re "FR") (str.to_re "GF") (str.to_re "PF") (str.to_re "TF") (str.to_re "GA") (str.to_re "GM") (str.to_re "GE") (str.to_re "DE") (str.to_re "GH") (str.to_re "GI") (str.to_re "GR") (str.to_re "GL") (str.to_re "GD") (str.to_re "GP") (str.to_re "GU") (str.to_re "GT") (str.to_re "GG") (str.to_re "GN") (str.to_re "GW") (str.to_re "GY") (str.to_re "HT") (str.to_re "HM") (str.to_re "VA") (str.to_re "HN") (str.to_re "HK") (str.to_re "HU") (str.to_re "IS") (str.to_re "IN") (str.to_re "ID") (str.to_re "IR") (str.to_re "IQ") (str.to_re "IE") (str.to_re "IM") (str.to_re "IL") (str.to_re "IT") (str.to_re "JM") (str.to_re "JP") (str.to_re "JE") (str.to_re "JO") (str.to_re "KZ") (str.to_re "KE") (str.to_re "KI") (str.to_re "KP") (str.to_re "KR") (str.to_re "KW") (str.to_re "KG") (str.to_re "LA") (str.to_re "LV") (str.to_re "LB") (str.to_re "LS") (str.to_re "LR") (str.to_re "LY") (str.to_re "LI") (str.to_re "LT") (str.to_re "LU") (str.to_re "MO") (str.to_re "MK") (str.to_re "MG") (str.to_re "MW") (str.to_re "MY") (str.to_re "MV") (str.to_re "ML") (str.to_re "MT") (str.to_re "MH") (str.to_re "MQ") (str.to_re "MR") (str.to_re "MU") (str.to_re "YT") (str.to_re "MX") (str.to_re "FM") (str.to_re "MD") (str.to_re "MC") (str.to_re "MC") (str.to_re "MN") (str.to_re "ME") (str.to_re "MS") (str.to_re "MA") (str.to_re "MZ") (str.to_re "MM") (str.to_re "MA") (str.to_re "NR") (str.to_re "NP") (str.to_re "NL") (str.to_re "AN") (str.to_re "NC") (str.to_re "NZ") (str.to_re "NI") (str.to_re "NE") (str.to_re "NG") (str.to_re "NU") (str.to_re "NF") (str.to_re "MP") (str.to_re "NO") (str.to_re "OM") (str.to_re "PK") (str.to_re "PW") (str.to_re "PS") (str.to_re "PA") (str.to_re "PG") (str.to_re "PY") (str.to_re "PE") (str.to_re "PH") (str.to_re "PN") (str.to_re "PL") (str.to_re "PT") (str.to_re "PR") (str.to_re "QA") (str.to_re "RE") (str.to_re "RO") (str.to_re "RU") (str.to_re "RW") (str.to_re "SH") (str.to_re "KN") (str.to_re "LC") (str.to_re "PM") (str.to_re "VC") (str.to_re "WS") (str.to_re "SM") (str.to_re "ST") (str.to_re "SA") (str.to_re "SN") (str.to_re "RS") (str.to_re "SC") (str.to_re "SL") (str.to_re "SG") (str.to_re "SK") (str.to_re "SI") (str.to_re "SB") (str.to_re "SO") (str.to_re "ZA") (str.to_re "GS") (str.to_re "ES") (str.to_re "LK") (str.to_re "SD") (str.to_re "SR") (str.to_re "SJ") (str.to_re "SZ") (str.to_re "SE") (str.to_re "CH") (str.to_re "SY") (str.to_re "TW") (str.to_re "TJ") (str.to_re "TZ") (str.to_re "TH") (str.to_re "TL") (str.to_re "TG") (str.to_re "TK") (str.to_re "TO") (str.to_re "TT") (str.to_re "TN") (str.to_re "TR") (str.to_re "TM") (str.to_re "TC") (str.to_re "TV") (str.to_re "UG") (str.to_re "UA") (str.to_re "AE") (str.to_re "GB") (str.to_re "US") (str.to_re "UM") (str.to_re "UY") (str.to_re "UZ") (str.to_re "VU") (str.to_re "VE") (str.to_re "VN") (str.to_re "VG") (str.to_re "VI") (str.to_re "WF") (str.to_re "EH") (str.to_re "YE") (str.to_re "ZM") (str.to_re "ZW")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
