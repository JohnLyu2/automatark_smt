(declare-const X String)
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}")))))
; /\x2Fevil\x2Fservices\x2Fbid_register\x2Ephp\x3FBID\x3D[A-Za-z]{6}\x26IP\x3D\d{1,3}\x2E\d{1,3}\x2E\d{1,3}\x2E\d{1,3}\x26cipher\x3D[A-Za-z]{9}/smiU
(assert (str.in_re X (re.++ (str.to_re "//evil/services/bid_register.php?BID=") ((_ re.loop 6 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "&IP=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&cipher=") ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "/smiU\u{a}"))))
; ^(9\d{2})([ \-]?)([7]\d|8[0-8])([ \-]?)(\d{4})$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (re.++ (str.to_re "7") (re.range "0" "9")) (re.++ (str.to_re "8") (re.range "0" "8"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}9") ((_ re.loop 2 2) (re.range "0" "9"))))))
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (not (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}"))))
; ^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9]+(-?[a-z0-9]+)?(\.[a-z0-9]+(-?[a-z0-9]+)?)*\.([a-z]{2}|xn\-{2}[a-z0-9]{4,18}|arpa|aero|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|xxx)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))) (str.to_re ".") (re.union ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re "xn") ((_ re.loop 2 2) (str.to_re "-")) ((_ re.loop 4 18) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re "arpa") (str.to_re "aero") (str.to_re "asia") (str.to_re "biz") (str.to_re "cat") (str.to_re "com") (str.to_re "coop") (str.to_re "edu") (str.to_re "gov") (str.to_re "info") (str.to_re "int") (str.to_re "jobs") (str.to_re "mil") (str.to_re "mobi") (str.to_re "museum") (str.to_re "name") (str.to_re "net") (str.to_re "org") (str.to_re "pro") (str.to_re "tel") (str.to_re "travel") (str.to_re "xxx")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
