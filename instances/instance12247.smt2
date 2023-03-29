(declare-const X String)
; Toolbar[^\n\r]*User-Agent\x3A\w+Host\x3A.*toX-Mailer\x3aLogsmax-Cookie\x3aAppName
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "toX-Mailer:\u{13}Logsmax-Cookie:AppName\u{a}"))))
; /(\x19\x00|\x00\x5C)\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}n\u{0}w\u{0}d\u{0}b\u{0}l\u{0}i\u{0}b\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}"))))
(check-sat)

(exit)
