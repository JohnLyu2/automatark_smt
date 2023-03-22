(declare-const X String)
; Travel\s+version\s+lnzzlnbk\x2fpkrm\.finFILESIZE\x3EM1User-Agent\x3AAgentwww\x2Eweepee\x2EcomOnlineM1Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Travel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finFILESIZE>\u{13}M1User-Agent:Agentwww.weepee.com\u{1b}OnlineM1Host:\u{a}")))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (not (str.in_re X (re.++ (str.to_re "/domain=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "$(") (str.to_re "%3b") (str.to_re "%60") (str.to_re "%24%28") (str.to_re ";") (str.to_re "`")) (str.to_re "/Pi\u{a}")))))
; <body[\d\sa-z\W\S\s]*>
(assert (str.in_re X (re.++ (str.to_re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">\u{a}"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "encoder") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}")))))
(check-sat)
