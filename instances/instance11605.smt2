(declare-const X String)
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
; ^[1-9]\d?-\d{7}$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/AGPi\u{a}")))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Ui\u{a}")))))
(check-sat)
