(declare-const X String)
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in_re X (re.++ (str.to_re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "iufilfwulmfi/riuf.lio\u{a}")))))
; version\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}")))))
; /filename=[^\n]*\x2emswmm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mswmm/i\u{a}"))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (str.in_re X (str.to_re "Host:Subject:From:\u{d0}\u{c5}\u{cf}\u{a2}\u{a}")))
(check-sat)

(exit)
