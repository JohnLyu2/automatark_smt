(declare-const X String)
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}"))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}"))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; ^(10\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5])$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "10.") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to_re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to_re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5"))) (str.to_re "\u{a}"))))
(check-sat)
