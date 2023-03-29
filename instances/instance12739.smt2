(declare-const X String)
; /filename=[^\n]*\x2esmil/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}"))))
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "httpUser-Agent:\u{a}"))))
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Arrow") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "whenu.com\u{13}\u{a}"))))
; \d{1,2}d \d{1,2}h
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "h\u{a}")))))
; url=Referer\x3AHost\x3AWelcome\x2FcommunicatortbGateCrasher4\x2e8\x2e4\x7D\x7BTrojan\x3AareSubject\x3a
(assert (not (str.in_re X (str.to_re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\u{a}"))))
(check-sat)

(exit)
