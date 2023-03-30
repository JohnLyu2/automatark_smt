(declare-const X String)
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTP\u{a}"))))
; \x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (str.to_re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
; /\x2fib2\x2f$/U
(assert (not (str.in_re X (str.to_re "//ib2//U\u{a}"))))
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)

(exit)
