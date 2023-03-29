(declare-const X String)
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.lzh") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\x2eproventactics\x2ecom\s+
(assert (not (str.in_re X (re.++ (str.to_re "www.proventactics.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}")))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
(check-sat)

(exit)
