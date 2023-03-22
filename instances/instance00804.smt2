(declare-const X String)
; ServerOVNsearch2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (str.to_re "ServerOVNsearch2.ad.shopnav.com/9899/search/results.php\u{a}"))))
(check-sat)
