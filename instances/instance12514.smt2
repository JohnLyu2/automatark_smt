(declare-const X String)
; \x2Ehtml.*cm.*www\x2Epeer2mail\x2EcomConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in_re X (re.++ (str.to_re ".html") (re.* re.allchar) (str.to_re "cm") (re.* re.allchar) (str.to_re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\u{a}"))))
; /filename=[^\n]*\x2ert/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}"))))
; ^\(?\+([9]{2}?[6])\)?[-. ]?([0-9]{3})[-. ]?([0-9]{3})[-. ]?([0-9]{3})$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "(")) (str.to_re "+") (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}") ((_ re.loop 2 2) (str.to_re "9")) (str.to_re "6")))))
; ^([0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])([Z]|\.[0-9]{4}|[-|\+]([0-1][0-9]|2[0-3]):([0-5][0-9]))?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::") (re.opt (re.union (str.to_re "Z") (re.++ (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}")))))
(check-sat)
