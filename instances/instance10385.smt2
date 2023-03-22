(declare-const X String)
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (str.in_re X (re.++ (str.to_re "//setup") re.allchar (str.to_re "cgi") (re.* re.allchar) (str.to_re "TimeToLive=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "%60") (str.to_re "`")) (str.to_re "/iU\u{a}"))))
; /filename=[^\n]*\x2eogv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/ezsb") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}\u{a}"))))
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (str.in_re X (re.++ (str.to_re "//.") (re.union (str.to_re "html") (str.to_re "php")) (str.to_re "/U\u{a}") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "_"))) (re.* (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "_"))))))
(check-sat)
