(declare-const X String)
; \x28\x29\s+WatchDog\sNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgiwww\x2Ekliksearch\x2Ecom1\x2E3\x7D\x7BTrojan\x3A
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspyt=WeHost:/cgi/logurl.cgiwww.kliksearch.com1.3}{Trojan:\u{a}")))))
; ^((192\.168\.0\.)(1[7-9]|2[0-9]|3[0-2]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}192.168.0.") (re.union (re.++ (str.to_re "1") (re.range "7" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "2")))))))
(check-sat)

(exit)
