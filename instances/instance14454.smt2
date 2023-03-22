(declare-const X String)
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:cdpnode=FILESIZE>\u{13}toolsbar.kuaiso.com\u{a}")))))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}")))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}"))))
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (str.in_re X (re.++ (str.to_re "/{\u{22}") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{22}:\u{22}") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "false")) (str.to_re "\u{22},/smiP\u{a}"))))
(check-sat)
