(declare-const X String)
; cojud\x2Edmcast\x2Ecom\sApofis\w+Referer\x3Awww\x2Emirarsearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "cojud.dmcast.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Apofis") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:www.mirarsearch.com\u{a}")))))
; X-Mailer\x3a[^\n\r]*Host\x3A\s+cyber@yahoo\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "cyber@yahoo.com\u{a}"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "UI2") (re.* re.allchar) (str.to_re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\u{a}")))))
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (not (str.in_re X (re.++ (str.to_re "/mJKV") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\u{a}")))))
(check-sat)
