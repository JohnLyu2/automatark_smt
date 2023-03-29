(declare-const X String)
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}"))))
(check-sat)

(exit)
