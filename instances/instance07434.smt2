(declare-const X String)
; /filename=[^\n]*\x2exlw/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xlw/i\u{a}")))))
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
; ZC-Bridge\w+USER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "USER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.alfacleaner.com\u{a}"))))
; User-Agent\x3A[^\n\r]*quick\x2Eqsrch\x2Ecom.*www\.searchinweb\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "quick.qsrch.com") (re.* re.allchar) (str.to_re "www.searchinweb.com\u{a}")))))
(check-sat)
