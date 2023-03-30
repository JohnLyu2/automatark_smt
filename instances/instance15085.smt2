(declare-const X String)
; ^(((0|128|192|224|240|248|252|254).0.0.0)|(255.(0|128|192|224|240|248|252|254).0.0)|(255.255.(0|128|192|224|240|248|252|254).0)|(255.255.255.(0|128|192|224|240|248|252|254)))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0") re.allchar (str.to_re "0") re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0") re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")) re.allchar (str.to_re "0")) (re.++ (str.to_re "255") re.allchar (str.to_re "255") re.allchar (str.to_re "255") re.allchar (re.union (str.to_re "0") (str.to_re "128") (str.to_re "192") (str.to_re "224") (str.to_re "240") (str.to_re "248") (str.to_re "252") (str.to_re "254")))) (str.to_re "\u{a}")))))
; /^\s*?MAIL\s+?FROM\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MAIL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FROM:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "()") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "{/i\u{a}"))))
; for.*www\x2Eeblocs\x2Ecom\d\x2Fiis2ebs\.asp\d\<title\>Actual\x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (str.to_re "www.eblocs.com\u{1b}") (re.range "0" "9") (str.to_re "/iis2ebs.asp") (re.range "0" "9") (str.to_re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
(check-sat)

(exit)
