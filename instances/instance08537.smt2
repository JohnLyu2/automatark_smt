(declare-const X String)
; ^(\+48\s*)?\d{2}\s*\d{3}(\s*|\-)\d{2}(\s*|\-)\d{2}$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+48") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (not (str.in_re X (re.++ (str.to_re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to_re "/") (re.+ (re.union (str.to_re "'") (str.to_re "^") (str.to_re "\u{22}") (str.to_re ">") (str.to_re "<") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/\u{a}")))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}"))))
(check-sat)
