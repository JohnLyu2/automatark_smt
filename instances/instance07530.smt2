(declare-const X String)
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (str.to_re "@")) (re.* (str.to_re "@"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (str.to_re ".")) (re.* (str.to_re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "@") (str.to_re "."))))
(check-sat)
