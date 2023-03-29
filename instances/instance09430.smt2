(declare-const X String)
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}")))))
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (not (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}"))))
; ^\d+$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
(check-sat)

(exit)
