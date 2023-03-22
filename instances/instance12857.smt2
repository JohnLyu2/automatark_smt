(declare-const X String)
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{a}"))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.altnet.com\u{1b}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; /^\/\?[a-f0-9]{32}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; Host\x3anotificationwww\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "Host:notification\u{13}www.thecommunicator.net\u{a}"))))
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "pjpoptwql/rlnj\u{a}")))))
(check-sat)
