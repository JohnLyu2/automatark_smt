(declare-const X String)
; /\x2Fevil\x2Fservices\x2Fbid_register\x2Ephp\x3FBID\x3D[A-Za-z]{6}\x26IP\x3D\d{1,3}\x2E\d{1,3}\x2E\d{1,3}\x2E\d{1,3}\x26cipher\x3D[A-Za-z]{9}/smiU
(assert (not (str.in_re X (re.++ (str.to_re "//evil/services/bid_register.php?BID=") ((_ re.loop 6 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "&IP=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&cipher=") ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "/smiU\u{a}")))))
(check-sat)

(exit)
