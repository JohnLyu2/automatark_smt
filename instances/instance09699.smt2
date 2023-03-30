(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}"))))
; <script[\\.|\\W|\\w]*?</script>
(assert (str.in_re X (re.++ (str.to_re "<script") (re.* (re.union (str.to_re "\u{5c}") (str.to_re ".") (str.to_re "|") (str.to_re "W") (str.to_re "w"))) (str.to_re "</script>\u{a}"))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}"))))
; Host\x3A\w+User-Agent\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:Host:\u{a}")))))
(check-sat)

(exit)
