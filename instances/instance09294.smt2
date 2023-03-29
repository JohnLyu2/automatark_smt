(declare-const X String)
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovpl\dHOST\x3AUser-Agent\x3AURLUBAgent%3fSchwindlerurl=Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to_re "ovpl") (re.range "0" "9") (str.to_re "HOST:User-Agent:URLUBAgent%3fSchwindlerurl=Host:\u{a}")))))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}")))
(check-sat)

(exit)
