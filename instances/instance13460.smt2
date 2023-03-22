(declare-const X String)
; search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php.*Logger.*Subject\x3a\s+Host\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to_re "Logger") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}")))))
; (^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; /filename=[^\n]*\x2ecis/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cis/i\u{a}")))))
(check-sat)
