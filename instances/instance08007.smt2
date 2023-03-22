(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
; \x2Fbar_pl\x2Fchk_bar\.fcgi\s+adblock\x2Elinkz\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}"))))
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (str.in_re X (re.++ (str.to_re "[") (re.+ re.allchar) (str.to_re "]") (re.+ re.allchar) (str.to_re "[") (re.opt (str.to_re "n")) (str.to_re "varchar]") (re.+ re.allchar) (str.to_re "NULL,\u{a}"))))
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in_re X (re.++ (str.to_re "www.searchinweb.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
(check-sat)
