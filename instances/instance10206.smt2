(declare-const X String)
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in_re X (re.++ (str.to_re "IP-") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "URL") (re.range "0" "9") (str.to_re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\u{a}")))))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}"))))
(check-sat)

(exit)
