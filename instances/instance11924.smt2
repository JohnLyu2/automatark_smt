(declare-const X String)
; ^[1-9]0?$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.opt (str.to_re "0")) (str.to_re "\u{a}"))))
; \x28\x29url=http\x3A1\x2E0b3\x2EaspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgi
(assert (str.in_re X (str.to_re "()url=http:\u{1b}1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\u{a}")))
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
; dl\x2Eweb-nexus\x2Enet\d+www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in_re X (re.++ (str.to_re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
; /^\x2f[a-f0-9]{135}/Um
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 135 135) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Um\u{a}"))))
(check-sat)

(exit)
