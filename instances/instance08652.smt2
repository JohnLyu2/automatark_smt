(declare-const X String)
; ^((\+){1}[1-9]{1}[0-9]{0,1}[0-9]{0,1}(\s){1}[\(]{1}[1-9]{1}[0-9]{1,5}[\)]{1}[\s]{1})[1-9]{1}[0-9]{4,9}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 4 9) (re.range "0" "9")) (str.to_re "\u{a}") ((_ re.loop 1 1) (str.to_re "+")) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (str.to_re "(")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ")")) ((_ re.loop 1 1) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}"))))
; SoftActivity\s+User-Agent\x3A.*LogsHost\x3AHost\x3AX-Mailer\x3a
(assert (str.in_re X (re.++ (str.to_re "SoftActivity\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "LogsHost:Host:X-Mailer:\u{13}\u{a}"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:cdpnode=FILESIZE>\u{13}toolsbar.kuaiso.com\u{a}"))))
(check-sat)

(exit)
