(declare-const X String)
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
; (^[a-zA-Z0-9]+://)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "://")))))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}")))
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "079") (str.to_re "078") (str.to_re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}"))))
(check-sat)

(exit)
