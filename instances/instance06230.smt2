(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}"))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}")))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "wwwfromToolbartheServer:www.searchreslt.com\u{a}")))))
(check-sat)
