(declare-const X String)
; /^tcpdata\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/tcpdata|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}")))
(check-sat)

(exit)
