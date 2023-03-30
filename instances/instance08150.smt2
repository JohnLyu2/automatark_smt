(declare-const X String)
; ^([^:])+\\.([^:])+$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{5c}") re.allchar (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{a}")))))
; User-Agent\x3a\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}"))))
; ^(0[1-9]|[12][0-9]|3[01])[\s\.\-/](J(anuary|uly|an|AN)|M(arch|ar|AR|ay|AY)|A(ugust|ug|UG)|(O(ctober|ct|CT)|(D(ecember|ec|EC))))[\s\.\-/][1-9][0-9]{3}|(0[1-9]|[12][0-9]|30)[\s\.\-/](A(pril|pr|PR)|J(une|un|UN)|S(eptember|ep|EP)|N(ovember|ov|OV))[\s\.\-/][1-9][0-9]{3}|(0[1-9]|1[0-9]|2[0-8])[\s\.\-/]F(ebruary|eb|EB)[\s\.\-/][1-9][0-9]{3}|29[\s\.\-/]F(ebruary|eb|EB)[\s\.\-/]((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26]))$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (str.to_re "J") (re.union (str.to_re "anuary") (str.to_re "uly") (str.to_re "an") (str.to_re "AN"))) (re.++ (str.to_re "M") (re.union (str.to_re "arch") (str.to_re "ar") (str.to_re "AR") (str.to_re "ay") (str.to_re "AY"))) (re.++ (str.to_re "A") (re.union (str.to_re "ugust") (str.to_re "ug") (str.to_re "UG"))) (re.++ (str.to_re "O") (re.union (str.to_re "ctober") (str.to_re "ct") (str.to_re "CT"))) (re.++ (str.to_re "D") (re.union (str.to_re "ecember") (str.to_re "ec") (str.to_re "EC")))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (str.to_re "A") (re.union (str.to_re "pril") (str.to_re "pr") (str.to_re "PR"))) (re.++ (str.to_re "J") (re.union (str.to_re "une") (str.to_re "un") (str.to_re "UN"))) (re.++ (str.to_re "S") (re.union (str.to_re "eptember") (str.to_re "ep") (str.to_re "EP"))) (re.++ (str.to_re "N") (re.union (str.to_re "ovember") (str.to_re "ov") (str.to_re "OV")))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "F") (re.union (str.to_re "ebruary") (str.to_re "eb") (str.to_re "EB")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "29") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "F") (re.union (str.to_re "ebruary") (str.to_re "eb") (str.to_re "EB")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
