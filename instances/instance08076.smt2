(declare-const X String)
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:Surveillance\u{13}com\u{a}"))))
; /\?a=dw[a-z]$/U
(assert (str.in_re X (re.++ (str.to_re "/?a=dw") (re.range "a" "z") (str.to_re "/U\u{a}"))))
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:rprpgbnrppb/ci\u{a}"))))
(check-sat)

(exit)
