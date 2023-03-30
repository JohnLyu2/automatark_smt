(declare-const X String)
; Pattern that matches all DVLA Vehicle Registration Marks (VRM). Allows for an optional single space between segments.
(assert (str.in_re X (re.++ (str.to_re "Pattern that matches all DVLA Vehicle Registration Marks VRM") re.allchar (str.to_re " Allows for an optional single space between segments") re.allchar (str.to_re "\u{a}"))))
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}"))))
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "Host:Host:From:\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furaxbnymomspyo/zowy\u{a}"))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "sql") (re.* re.allchar) (str.to_re "badurl.grandstreetinteractive.com\u{a}"))))
(check-sat)

(exit)
