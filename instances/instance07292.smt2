(declare-const X String)
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (str.in_re X (str.to_re "www.maxifiles.comServidor.\u{13}\u{a}")))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}"))))
; passcorrect\x3B\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3Dversion
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}")))))
; ^[0-9]{5}([- /]?[0-9]{4})?$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
