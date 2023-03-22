(declare-const X String)
; Monitor\s+SupervisorPalUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Monitor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SupervisorPalUser-Agent:\u{a}"))))
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "/w") (str.to_re "/W") (str.to_re "<") (str.to_re ">") (str.to_re "+") (str.to_re "?") (str.to_re "$") (str.to_re "%") (str.to_re "{") (str.to_re "}") (str.to_re "&"))) (str.to_re "\u{a}")))))
; for.*www\x2Eeblocs\x2Ecom\d\x2Fiis2ebs\.asp\d\<title\>Actual\x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (str.to_re "www.eblocs.com\u{1b}") (re.range "0" "9") (str.to_re "/iis2ebs.asp") (re.range "0" "9") (str.to_re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}")))))
(check-sat)
