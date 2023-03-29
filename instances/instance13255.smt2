(declare-const X String)
; from\s+\x2Fdss\x2Fcc\.2_0_0\.[^\n\r]*uploadServer
(assert (not (str.in_re X (re.++ (str.to_re "from") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/dss/cc.2_0_0.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "uploadServer\u{a}")))))
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (str.in_re X (re.++ (str.to_re "Keylogger") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}Host:Host:port\u{a}"))))
; /^\/jmx.jar?r=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "//jmx") re.allchar (str.to_re "ja") (re.opt (str.to_re "r")) (str.to_re "r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; MyAgentprotocolprotocolHost\x3A\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29data2\.activshopper\.com
(assert (not (str.in_re X (str.to_re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\u{a}"))))
(check-sat)

(exit)
