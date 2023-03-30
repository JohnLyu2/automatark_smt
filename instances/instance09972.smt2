(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (not (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}"))))
; /^icmp\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/icmp|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
(check-sat)

(exit)
