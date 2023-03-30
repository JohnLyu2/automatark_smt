(declare-const X String)
; \x28\x29\s+WatchDog\sNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgiwww\x2Ekliksearch\x2Ecom1\x2E3\x7D\x7BTrojan\x3A
(assert (not (str.in_re X (re.++ (str.to_re "()") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDog") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Netspyt=WeHost:/cgi/logurl.cgiwww.kliksearch.com1.3}{Trojan:\u{a}")))))
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (not (str.in_re X (re.++ (str.to_re "configINTERNAL.ini") (re.* re.allchar) (str.to_re "SecureNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.asp\u{a}")))))
(check-sat)

(exit)
