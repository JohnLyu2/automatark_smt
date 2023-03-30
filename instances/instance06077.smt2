(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}")))))
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (not (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:Surveillance\u{13}com\u{a}")))))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in_re X (re.++ (str.to_re "/router=") (re.* re.allchar) (str.to_re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "&")) (str.to_re "/iP\u{a}")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (str.in_re X (re.++ (str.to_re "/From:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "SpyBuddy/smi\u{a}"))))
(check-sat)

(exit)
