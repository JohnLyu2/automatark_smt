(declare-const X String)
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}"))))
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}"))))
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "en") (re.union (str.to_re "I") (str.to_re "i") (str.to_re "1")) (re.union (str.to_re "$") (str.to_re "s")) (re.* re.allchar) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}Anal\u{a}"))))
(check-sat)
