(declare-const X String)
; 9[0-9]
(assert (not (str.in_re X (re.++ (str.to_re "9") (re.range "0" "9") (str.to_re "\u{a}")))))
; ^([1-9]|1[0-2])$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}"))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "HBand,") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
; \x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (str.to_re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}"))))
(check-sat)

(exit)
