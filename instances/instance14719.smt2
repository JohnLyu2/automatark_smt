(declare-const X String)
; /^\/[a-f0-9]{32}\.eot$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".eot/U\u{a}"))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
; /^(\d+\*)+(\d)+$/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to_re "*"))) (re.+ (re.range "0" "9")) (str.to_re "/gm\u{a}")))))
; ^(A(BW|FG|GO|IA|L(A|B)|N(D|T)|R(E|G|M)|SM|T(A|F|G)|U(S|T)|ZE)|B(DI|E(L|N)|FA|G(D|R)|H(R|S)|IH|L(M|R|Z)|MU|OL|R(A|B|N)|TN|VT|WA)|C(A(F|N)|CK|H(E|L|N)|IV|MR|O(D|G|K|L|M)|PV|RI|UB|XR|Y(M|P)|ZE)|D(EU|JI|MA|NK|OM|ZA)|E(CU|GY|RI|S(H|P|T)|TH)|F(IN|JI|LK|R(A|O)|SM)|G(AB|BR|EO|GY|HA|I(B|N)|LP|MB|NQ|NB|R(C|D|L)|TM|U(F|M|Y))|H(KG|MD|ND|RV|TI|UN)|I(DN|MN|ND|OT|R(L|N|Q)|S(L|R)|TA)|J(AM|EY|OR|PN)|K(AZ|EN|GZ|HM|IR|NA|OR|WT)|L(AO|B(N|R|Y)|CA|IE|KA|SO|TU|UX|VA)|M(A(C|F|R)|CO|D(A|G|V)|EX|HL|KD|L(I|T)|MR|N(E|G|P)|OZ|RT|SR|TQ|US|WI|Y(S|T))|N(AM|CL|ER|FK|GA|I(C|U)|LD|OR|PL|RU|ZL)|OMN|P(A(K|N)|CN|ER|HL|LW|NG|OL|R(I|K|T|Y)|SE|YF)|QAT|R(EU|OU|US|WA)|S(AU|DN|EN|G(P|S)|HN|JM|L(B|E|V)|MR|OM|PM|RB|TP|UR|V(K|N)|W(E|Z)|Y(C|R))|T(C(A|D)|GO|HA|JK|K(L|M)|LS|ON|TO|U(N|R|V)|WN|ZA)|U(EN|GA|KR|MI|RY|SA|ZB)|V(AT|CT|GB|IR|NM|UT)|W(LF|SM)|YEM|Z(AF|MB|WE))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "BW") (str.to_re "FG") (str.to_re "GO") (str.to_re "IA") (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "B"))) (re.++ (str.to_re "N") (re.union (str.to_re "D") (str.to_re "T"))) (re.++ (str.to_re "R") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "M"))) (str.to_re "SM") (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "F") (str.to_re "G"))) (re.++ (str.to_re "U") (re.union (str.to_re "S") (str.to_re "T"))) (str.to_re "ZE"))) (re.++ (str.to_re "B") (re.union (str.to_re "DI") (re.++ (str.to_re "E") (re.union (str.to_re "L") (str.to_re "N"))) (str.to_re "FA") (re.++ (str.to_re "G") (re.union (str.to_re "D") (str.to_re "R"))) (re.++ (str.to_re "H") (re.union (str.to_re "R") (str.to_re "S"))) (str.to_re "IH") (re.++ (str.to_re "L") (re.union (str.to_re "M") (str.to_re "R") (str.to_re "Z"))) (str.to_re "MU") (str.to_re "OL") (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "N"))) (str.to_re "TN") (str.to_re "VT") (str.to_re "WA"))) (re.++ (str.to_re "C") (re.union (re.++ (str.to_re "A") (re.union (str.to_re "F") (str.to_re "N"))) (str.to_re "CK") (re.++ (str.to_re "H") (re.union (str.to_re "E") (str.to_re "L") (str.to_re "N"))) (str.to_re "IV") (str.to_re "MR") (re.++ (str.to_re "O") (re.union (str.to_re "D") (str.to_re "G") (str.to_re "K") (str.to_re "L") (str.to_re "M"))) (str.to_re "PV") (str.to_re "RI") (str.to_re "UB") (str.to_re "XR") (re.++ (str.to_re "Y") (re.union (str.to_re "M") (str.to_re "P"))) (str.to_re "ZE"))) (re.++ (str.to_re "D") (re.union (str.to_re "EU") (str.to_re "JI") (str.to_re "MA") (str.to_re "NK") (str.to_re "OM") (str.to_re "ZA"))) (re.++ (str.to_re "E") (re.union (str.to_re "CU") (str.to_re "GY") (str.to_re "RI") (re.++ (str.to_re "S") (re.union (str.to_re "H") (str.to_re "P") (str.to_re "T"))) (str.to_re "TH"))) (re.++ (str.to_re "F") (re.union (str.to_re "IN") (str.to_re "JI") (str.to_re "LK") (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "O"))) (str.to_re "SM"))) (re.++ (str.to_re "G") (re.union (str.to_re "AB") (str.to_re "BR") (str.to_re "EO") (str.to_re "GY") (str.to_re "HA") (re.++ (str.to_re "I") (re.union (str.to_re "B") (str.to_re "N"))) (str.to_re "LP") (str.to_re "MB") (str.to_re "NQ") (str.to_re "NB") (re.++ (str.to_re "R") (re.union (str.to_re "C") (str.to_re "D") (str.to_re "L"))) (str.to_re "TM") (re.++ (str.to_re "U") (re.union (str.to_re "F") (str.to_re "M") (str.to_re "Y"))))) (re.++ (str.to_re "H") (re.union (str.to_re "KG") (str.to_re "MD") (str.to_re "ND") (str.to_re "RV") (str.to_re "TI") (str.to_re "UN"))) (re.++ (str.to_re "I") (re.union (str.to_re "DN") (str.to_re "MN") (str.to_re "ND") (str.to_re "OT") (re.++ (str.to_re "R") (re.union (str.to_re "L") (str.to_re "N") (str.to_re "Q"))) (re.++ (str.to_re "S") (re.union (str.to_re "L") (str.to_re "R"))) (str.to_re "TA"))) (re.++ (str.to_re "J") (re.union (str.to_re "AM") (str.to_re "EY") (str.to_re "OR") (str.to_re "PN"))) (re.++ (str.to_re "K") (re.union (str.to_re "AZ") (str.to_re "EN") (str.to_re "GZ") (str.to_re "HM") (str.to_re "IR") (str.to_re "NA") (str.to_re "OR") (str.to_re "WT"))) (re.++ (str.to_re "L") (re.union (str.to_re "AO") (re.++ (str.to_re "B") (re.union (str.to_re "N") (str.to_re "R") (str.to_re "Y"))) (str.to_re "CA") (str.to_re "IE") (str.to_re "KA") (str.to_re "SO") (str.to_re "TU") (str.to_re "UX") (str.to_re "VA"))) (re.++ (str.to_re "M") (re.union (re.++ (str.to_re "A") (re.union (str.to_re "C") (str.to_re "F") (str.to_re "R"))) (str.to_re "CO") (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "G") (str.to_re "V"))) (str.to_re "EX") (str.to_re "HL") (str.to_re "KD") (re.++ (str.to_re "L") (re.union (str.to_re "I") (str.to_re "T"))) (str.to_re "MR") (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "P"))) (str.to_re "OZ") (str.to_re "RT") (str.to_re "SR") (str.to_re "TQ") (str.to_re "US") (str.to_re "WI") (re.++ (str.to_re "Y") (re.union (str.to_re "S") (str.to_re "T"))))) (re.++ (str.to_re "N") (re.union (str.to_re "AM") (str.to_re "CL") (str.to_re "ER") (str.to_re "FK") (str.to_re "GA") (re.++ (str.to_re "I") (re.union (str.to_re "C") (str.to_re "U"))) (str.to_re "LD") (str.to_re "OR") (str.to_re "PL") (str.to_re "RU") (str.to_re "ZL"))) (str.to_re "OMN") (re.++ (str.to_re "P") (re.union (re.++ (str.to_re "A") (re.union (str.to_re "K") (str.to_re "N"))) (str.to_re "CN") (str.to_re "ER") (str.to_re "HL") (str.to_re "LW") (str.to_re "NG") (str.to_re "OL") (re.++ (str.to_re "R") (re.union (str.to_re "I") (str.to_re "K") (str.to_re "T") (str.to_re "Y"))) (str.to_re "SE") (str.to_re "YF"))) (str.to_re "QAT") (re.++ (str.to_re "R") (re.union (str.to_re "EU") (str.to_re "OU") (str.to_re "US") (str.to_re "WA"))) (re.++ (str.to_re "S") (re.union (str.to_re "AU") (str.to_re "DN") (str.to_re "EN") (re.++ (str.to_re "G") (re.union (str.to_re "P") (str.to_re "S"))) (str.to_re "HN") (str.to_re "JM") (re.++ (str.to_re "L") (re.union (str.to_re "B") (str.to_re "E") (str.to_re "V"))) (str.to_re "MR") (str.to_re "OM") (str.to_re "PM") (str.to_re "RB") (str.to_re "TP") (str.to_re "UR") (re.++ (str.to_re "V") (re.union (str.to_re "K") (str.to_re "N"))) (re.++ (str.to_re "W") (re.union (str.to_re "E") (str.to_re "Z"))) (re.++ (str.to_re "Y") (re.union (str.to_re "C") (str.to_re "R"))))) (re.++ (str.to_re "T") (re.union (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "D"))) (str.to_re "GO") (str.to_re "HA") (str.to_re "JK") (re.++ (str.to_re "K") (re.union (str.to_re "L") (str.to_re "M"))) (str.to_re "LS") (str.to_re "ON") (str.to_re "TO") (re.++ (str.to_re "U") (re.union (str.to_re "N") (str.to_re "R") (str.to_re "V"))) (str.to_re "WN") (str.to_re "ZA"))) (re.++ (str.to_re "U") (re.union (str.to_re "EN") (str.to_re "GA") (str.to_re "KR") (str.to_re "MI") (str.to_re "RY") (str.to_re "SA") (str.to_re "ZB"))) (re.++ (str.to_re "V") (re.union (str.to_re "AT") (str.to_re "CT") (str.to_re "GB") (str.to_re "IR") (str.to_re "NM") (str.to_re "UT"))) (re.++ (str.to_re "W") (re.union (str.to_re "LF") (str.to_re "SM"))) (str.to_re "YEM") (re.++ (str.to_re "Z") (re.union (str.to_re "AF") (str.to_re "MB") (str.to_re "WE")))) (str.to_re "\u{a}")))))
; ^([-+]?(\d+\.?\d*|\d*\.?\d+)([Ee][-+]?[0-2]?\d{1,2})?)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.range "0" "2")) ((_ re.loop 1 2) (re.range "0" "9")))))))
(check-sat)
