(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}")))
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to_re "FTPsearch.dropspam.com\u{a}"))))
; ^((0)*|(1|(2|(3|(4|50)0)0)0)*|(01*(2|(3|(4|50)0)0))*|(00(1|20)*(3|(4|50)0))*|(000(1|(2|30)0)*(4|50))*|(0000(1|(2|(3|40)0)0)*5)*|(2|(5(3|50)0|(4|51)(2|40))0|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*(1|(3|50(2|40))0))*|(501|(4|5050)0|(1|(3|50(2|40))0)(2|(5(3|50)0|(4|51)(2|40))0)*(3|(4|51)1|(52|(4|51)50)0))*|(0(2|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*1)*(5(3|50)0|(4|51)(2|40)|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*(3|50(2|40))))*|(0(501)*(4|5050)|0(501)*(1|(3|50(2|40))0)(2|(5(3|50)0|(4|51)(2|40))0|(3|(4|51)1)(501)*(1|(3|50(2|40))0))*(52|(4|51)50|(3|(4|51)1)(501)*(4|5050)))*|((01|0500)(40)*5|(0(2|40)0|(01|0500)(40)*(1|30))(2|(5(3|50)0|(4|51)(2|40))0|(3|(4|51)1|(52|(4|51)50)0)(40)*(1|30))*(3|(4|51)1|(52|(4|51)50)0)(40)*5)*|((1|500)(40)*50|((2|40)0|(1|500)(40)*(1|30))(2|5(3|50)00|(3|520)(40)*(1|30))*(4|51|(3|520)(40)*50))*|(00(2|(4|51)20|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*(1|(3|502)0))*(5(3|50)|(4|51)4|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*504))*|(00(501|40)*505|00(501|40)*(1|(3|50(2|40))0)(2|(5(3|50)0|(4|51)(2|40))0|(3|(4|51)1|520)(501|40)*(1|(3|50(2|40))0))*((4|51)5|(3|(4|51)1|520)(501|40)*505))*|((((3|50)0|1(2|40))0|(11|(2|150)0)(501|(4|5050)0)*(1|(3|50(2|40))0))(2|4(2|40)0|(3|41|4500)(501|(4|5050)0)*(1|(3|50(2|40))0))*5)*|(000(2|(530|(4|51)(2|40))0|(3|(4|51)1|(52|(4|51)50)0)(501|(4|5050)0)*(1|(3|50(2|40))0))*55)*|(3|55(2|50)0|5(3|51)(1|40)|(4|52|5(3|51)50)(51|(4|550)50)*(2|530|(4|550)(1|40)))*|(51|(4|550)50|(2|530|(4|550)(1|40))(3|55(2|50)0|5(3|51)(1|40))*(4|52|5(3|51)50))*|(50(51)*(4|550)|(1|40|50(51)*(2|530))(3|55(2|50)0|(4|52)(51)*(2|530))*(5(3|51)|(4|52)(51)*(4|550)))*|(0(3|5(3|51)1|(4|52|5(3|51)50)(51|(4|550)50)*(2|(4|550)1))*(55(2|50)|5(3|51)4|(4|52|5(3|51)50)(51|(4|550)50)*(53|(4|550)4)))*|(0(51)*(4|550)5|0(51)*(2|530|(4|550)(1|40))(3|55(2|50)0|5(3|51)(1|40)|(4|52)(51)*(2|530|(4|550)(1|40)))*(5(3|51)5|(4|52)(51)*(4|550)5))*|((1|5050)(450)*5|(30|50(1|40)|(1|5050)(450)*(2|4(1|40)))(3|55(2|50)0|5(3|51)(1|40)|(4|52|5(3|51)50)(450)*(2|4(1|40)))*(4|52|5(3|51)50)(450)*5)*|(050(51|450)*55|(0(1|40)|050(51|450)*(2|530|4(1|40)))(3|55(2|50)0|5(3|51)(1|40)|(4|52|5(3|51)50)(51|450)*(2|530|4(1|40)))*(4|52|5(3|51)50)(51|450)*55)*|((5(2|50)0|(3|51)(1|40)|(2|(3|51)50)(51|(4|550)50)*(2|530|(4|550)(1|40)))(3|4(51|(4|550)50)*(2|530|(4|550)(1|40)))*5)*|(((2|50)0|1(1|40)|150(51|(4|550)50)*(2|530|(4|550)(1|40)))(3|53(1|40)|(4|52|5350)(51|(4|550)50)*(2|530|(4|550)(1|40)))*55)*|(00(3|5520|5(3|51)(1|40)|(4|52|5(3|51)50)(51|(4|550)50)*(2|530|(4|550)(1|40)))*555)*|(4|5(3|5(2|5(1|50))))*|((3|5(2|5(1|50)))4*5)*|((2|5(1|50))(4|53)*55)*|((1|50)(4|5(3|52))*555)*|(0(4|5(3|5(2|51)))*5555)*|(5)*)$
(assert (not (str.in_re X (re.++ (re.union (re.* (str.to_re "0")) (re.* (re.union (str.to_re "1") (re.++ (re.union (str.to_re "2") (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "50")) (str.to_re "0"))) (str.to_re "0"))) (str.to_re "0")))) (re.* (re.++ (str.to_re "0") (re.* (str.to_re "1")) (re.union (str.to_re "2") (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "50")) (str.to_re "0"))) (str.to_re "0"))))) (re.* (re.++ (str.to_re "00") (re.* (re.union (str.to_re "1") (str.to_re "20"))) (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "50")) (str.to_re "0"))))) (re.* (re.++ (str.to_re "000") (re.* (re.union (str.to_re "1") (re.++ (re.union (str.to_re "2") (str.to_re "30")) (str.to_re "0")))) (re.union (str.to_re "4") (str.to_re "50")))) (re.* (re.++ (str.to_re "0000") (re.* (re.union (str.to_re "1") (re.++ (re.union (str.to_re "2") (re.++ (re.union (str.to_re "3") (str.to_re "40")) (str.to_re "0"))) (str.to_re "0")))) (str.to_re "5"))) (re.* (re.union (str.to_re "2") (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")) (re.++ (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0"))) (re.* (re.union (str.to_re "2") (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))) (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0")))))) (re.* (re.++ (str.to_re "0") (re.* (re.union (str.to_re "2") (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (str.to_re "1")))) (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40"))) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))))))) (re.* (re.++ (str.to_re "0") (re.union (re.++ (re.* (str.to_re "501")) (re.union (str.to_re "4") (str.to_re "5050"))) (re.++ (re.* (str.to_re "501")) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0"))) (re.* (re.union (str.to_re "2") (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1"))) (re.* (str.to_re "501")) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))))) (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1"))) (re.* (str.to_re "501")) (re.union (str.to_re "4") (str.to_re "5050")))))))) (re.* (re.union (re.++ (re.* (str.to_re "40")) (str.to_re "50") (re.union (str.to_re "1") (str.to_re "500"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "2") (str.to_re "40")) (str.to_re "0")) (re.++ (re.* (str.to_re "40")) (re.union (str.to_re "1") (str.to_re "30")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "500")))) (re.* (re.union (str.to_re "2") (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (str.to_re "40")) (re.union (str.to_re "1") (str.to_re "30"))))) (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (str.to_re "40")) (str.to_re "5")))) (re.* (re.union (re.++ (re.union (str.to_re "1") (str.to_re "500")) (re.* (str.to_re "40")) (str.to_re "50")) (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "40")) (str.to_re "0")) (re.++ (re.union (str.to_re "1") (str.to_re "500")) (re.* (str.to_re "40")) (re.union (str.to_re "1") (str.to_re "30")))) (re.* (re.union (str.to_re "2") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "00")) (re.++ (re.union (str.to_re "3") (str.to_re "520")) (re.* (str.to_re "40")) (re.union (str.to_re "1") (str.to_re "30"))))) (re.union (str.to_re "4") (str.to_re "51") (re.++ (re.union (str.to_re "3") (str.to_re "520")) (re.* (str.to_re "40")) (str.to_re "50")))))) (re.* (re.++ (str.to_re "00") (re.* (re.union (str.to_re "2") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "20")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (str.to_re "502")) (str.to_re "0")))))) (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50"))) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "4")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (str.to_re "504"))))) (re.* (re.++ (str.to_re "00") (re.union (re.++ (re.* (re.union (str.to_re "501") (str.to_re "40"))) (str.to_re "505")) (re.++ (re.* (re.union (str.to_re "501") (str.to_re "40"))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0"))) (re.* (re.union (str.to_re "2") (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (str.to_re "520")) (re.* (re.union (str.to_re "501") (str.to_re "40"))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))))) (re.union (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "5")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (str.to_re "520")) (re.* (re.union (str.to_re "501") (str.to_re "40"))) (str.to_re "505"))))))) (re.* (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "3") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "1") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "11") (re.++ (re.union (str.to_re "2") (str.to_re "150")) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0"))))) (re.* (re.union (str.to_re "2") (re.++ (str.to_re "4") (re.union (str.to_re "2") (str.to_re "40")) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (str.to_re "41") (str.to_re "4500")) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))))) (str.to_re "5"))) (re.* (re.++ (str.to_re "000") (re.* (re.union (str.to_re "2") (re.++ (re.union (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "52") (re.++ (re.union (str.to_re "4") (str.to_re "51")) (str.to_re "50"))) (str.to_re "0"))) (re.* (re.union (str.to_re "501") (re.++ (re.union (str.to_re "4") (str.to_re "5050")) (str.to_re "0")))) (re.union (str.to_re "1") (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "50") (re.union (str.to_re "2") (str.to_re "40")))) (str.to_re "0")))))) (str.to_re "55"))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40"))))))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")) (re.++ (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40")))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))))) (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50")))))) (re.* (re.union (re.++ (str.to_re "50") (re.* (str.to_re "51")) (re.union (str.to_re "4") (str.to_re "550"))) (re.++ (re.union (str.to_re "1") (str.to_re "40") (re.++ (str.to_re "50") (re.* (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "530")))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "4") (str.to_re "52")) (re.* (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "530"))))) (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51"))) (re.++ (re.union (str.to_re "4") (str.to_re "52")) (re.* (str.to_re "51")) (re.union (str.to_re "4") (str.to_re "550"))))))) (re.* (re.++ (str.to_re "0") (re.* (re.union (str.to_re "3") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "1")) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "1")))))) (re.union (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50"))) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "4")) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "53") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "4"))))))) (re.* (re.++ (str.to_re "0") (re.union (re.++ (re.* (str.to_re "51")) (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "5")) (re.++ (re.* (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40")))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52")) (re.* (str.to_re "51")) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40"))))))) (re.union (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "5")) (re.++ (re.union (str.to_re "4") (str.to_re "52")) (re.* (str.to_re "51")) (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "5"))))))) (re.* (re.union (re.++ (re.union (str.to_re "1") (str.to_re "5050")) (re.* (str.to_re "450")) (str.to_re "5")) (re.++ (re.union (str.to_re "30") (re.++ (str.to_re "50") (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "1") (str.to_re "5050")) (re.* (str.to_re "450")) (re.union (str.to_re "2") (re.++ (str.to_re "4") (re.union (str.to_re "1") (str.to_re "40")))))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (str.to_re "450")) (re.union (str.to_re "2") (re.++ (str.to_re "4") (re.union (str.to_re "1") (str.to_re "40"))))))) (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (str.to_re "450")) (str.to_re "5")))) (re.* (re.union (re.++ (str.to_re "050") (re.* (re.union (str.to_re "51") (str.to_re "450"))) (str.to_re "55")) (re.++ (re.* (re.union (str.to_re "3") (re.++ (str.to_re "55") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (str.to_re "450"))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (str.to_re "4") (re.union (str.to_re "1") (str.to_re "40"))))))) (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (str.to_re "450"))) (str.to_re "550") (re.union (re.++ (str.to_re "50") (re.* (re.union (str.to_re "51") (str.to_re "450"))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (str.to_re "4") (re.union (str.to_re "1") (str.to_re "40"))))) (str.to_re "1") (str.to_re "40"))))) (re.* (re.++ (re.union (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "2") (re.++ (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40")))))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "4") (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40"))))))) (str.to_re "5"))) (re.* (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "50")) (str.to_re "0")) (re.++ (str.to_re "1") (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (str.to_re "150") (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40")))))) (re.* (re.union (str.to_re "3") (re.++ (str.to_re "53") (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52") (str.to_re "5350")) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40"))))))) (str.to_re "55"))) (re.* (re.++ (str.to_re "00") (re.* (re.union (str.to_re "3") (str.to_re "5520") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (re.union (str.to_re "1") (str.to_re "40"))) (re.++ (re.union (str.to_re "4") (str.to_re "52") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "51")) (str.to_re "50"))) (re.* (re.union (str.to_re "51") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (str.to_re "50")))) (re.union (str.to_re "2") (str.to_re "530") (re.++ (re.union (str.to_re "4") (str.to_re "550")) (re.union (str.to_re "1") (str.to_re "40"))))))) (str.to_re "555"))) (re.* (re.union (str.to_re "4") (re.++ (str.to_re "5") (re.union (str.to_re "3") (re.++ (str.to_re "5") (re.union (str.to_re "2") (re.++ (str.to_re "5") (re.union (str.to_re "1") (str.to_re "50"))))))))) (re.* (re.++ (re.union (str.to_re "3") (re.++ (str.to_re "5") (re.union (str.to_re "2") (re.++ (str.to_re "5") (re.union (str.to_re "1") (str.to_re "50")))))) (re.* (str.to_re "4")) (str.to_re "5"))) (re.* (re.++ (re.union (str.to_re "2") (re.++ (str.to_re "5") (re.union (str.to_re "1") (str.to_re "50")))) (re.* (re.union (str.to_re "4") (str.to_re "53"))) (str.to_re "55"))) (re.* (re.++ (re.union (str.to_re "1") (str.to_re "50")) (re.* (re.union (str.to_re "4") (re.++ (str.to_re "5") (re.union (str.to_re "3") (str.to_re "52"))))) (str.to_re "555"))) (re.* (re.++ (str.to_re "0") (re.* (re.union (str.to_re "4") (re.++ (str.to_re "5") (re.union (str.to_re "3") (re.++ (str.to_re "5") (re.union (str.to_re "2") (str.to_re "51"))))))) (str.to_re "5555"))) (re.* (str.to_re "5"))) (str.to_re "\u{a}")))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}wlpgskmv/lwzo.qv#Subject:Activity\u{a}")))
; (\n\r)   replacement string---->\n
(assert (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}")))
(check-sat)

(exit)
