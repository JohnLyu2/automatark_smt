(declare-const X String)
; ^(((\d{4})(0[13578]|10|12)(0[1-9]|[12][0-9]|3[01]))|((\d{4})(0[469]|11)([0][1-9]|[12][0-9]|30))|((\d{4})(02)(0[1-9]|1[0-9]|2[0-8]))|(([02468][048]00)(02)(29))|(([13579][26]00) (02)(29))|(([0-9][0-9][0][48])(02)(29))|(([0-9][0-9][2468][048])(02)(29))|(([0-9][0-9][13579][26])(02)(29))|(00000000)|(88888888)|(99999999))?$
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (str.to_re "0229") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re " 0229") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "0229") (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "0229") (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "0229") (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (str.to_re "00000000") (str.to_re "88888888") (str.to_re "99999999"))) (str.to_re "\u{a}"))))
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (str.to_re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^\$((\d{1})\,\d{1,3}(\,\d{3}))|(\d{1,3}(\,\d{3}))|(\d{1,3})?$
(assert (str.in_re X (re.union (re.++ (str.to_re "$") ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ^((AL)|(AK)|(AS)|(AZ)|(AR)|(CA)|(CO)|(CT)|(DE)|(DC)|(FM)|(FL)|(GA)|(GU)|(HI)|(ID)|(IL)|(IN)|(IA)|(KS)|(KY)|(LA)|(ME)|(MH)|(MD)|(MA)|(MI)|(MN)|(MS)|(MO)|(MT)|(NE)|(NV)|(NH)|(NJ)|(NM)|(NY)|(NC)|(ND)|(MP)|(OH)|(OK)|(OR)|(PW)|(PA)|(PR)|(RI)|(SC)|(SD)|(TN)|(TX)|(UT)|(VT)|(VI)|(VA)|(WA)|(WV)|(WI)|(WY))$
(assert (str.in_re X (re.++ (re.union (str.to_re "AL") (str.to_re "AK") (str.to_re "AS") (str.to_re "AZ") (str.to_re "AR") (str.to_re "CA") (str.to_re "CO") (str.to_re "CT") (str.to_re "DE") (str.to_re "DC") (str.to_re "FM") (str.to_re "FL") (str.to_re "GA") (str.to_re "GU") (str.to_re "HI") (str.to_re "ID") (str.to_re "IL") (str.to_re "IN") (str.to_re "IA") (str.to_re "KS") (str.to_re "KY") (str.to_re "LA") (str.to_re "ME") (str.to_re "MH") (str.to_re "MD") (str.to_re "MA") (str.to_re "MI") (str.to_re "MN") (str.to_re "MS") (str.to_re "MO") (str.to_re "MT") (str.to_re "NE") (str.to_re "NV") (str.to_re "NH") (str.to_re "NJ") (str.to_re "NM") (str.to_re "NY") (str.to_re "NC") (str.to_re "ND") (str.to_re "MP") (str.to_re "OH") (str.to_re "OK") (str.to_re "OR") (str.to_re "PW") (str.to_re "PA") (str.to_re "PR") (str.to_re "RI") (str.to_re "SC") (str.to_re "SD") (str.to_re "TN") (str.to_re "TX") (str.to_re "UT") (str.to_re "VT") (str.to_re "VI") (str.to_re "VA") (str.to_re "WA") (str.to_re "WV") (str.to_re "WI") (str.to_re "WY")) (str.to_re "\u{a}"))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in_re X (re.++ (str.to_re "\u{5c}s\u{5c}") ((_ re.loop 2 2) (str.to_re "d")) (str.to_re "-\u{5c}") ((_ re.loop 3 3) (str.to_re "w")) (str.to_re "-\u{5c}") ((_ re.loop 4 4) (str.to_re "d")) (str.to_re "\u{a}"))))
(check-sat)
