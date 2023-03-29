(declare-const X String)
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}"))))
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}"))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (not (str.in_re X (str.to_re "Daemonwww.lookquick.comHost:\u{a}"))))
; ^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")))))
(check-sat)

(exit)
