(declare-const X String)
; Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:00000www.zhongsou.com\u{a}"))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "protected") (re.* re.allchar) (str.to_re "public")) (re.++ (str.to_re "private") (re.* re.allchar) (str.to_re "protected")) (re.++ (str.to_re "\u{a}private") (re.* re.allchar) (str.to_re "public"))))))
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolbarScanerX-Mailer:\u{13}Information\u{a}")))))
(check-sat)

(exit)
