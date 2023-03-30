(declare-const X String)
; ServerOVNsearch2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (str.to_re "ServerOVNsearch2.ad.shopnav.com/9899/search/results.php\u{a}"))))
; (([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "+9") (re.opt (str.to_re "0"))) (re.opt (str.to_re "0"))) (re.opt (str.to_re " ")) (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}"))))
; (")([0-9]*)(",")([0-9]*)("\))
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22},\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22})\u{a}"))))
(check-sat)

(exit)
