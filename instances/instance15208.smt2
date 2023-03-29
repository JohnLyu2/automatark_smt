(declare-const X String)
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
; /filename=[^\n]*\x2esmil/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}"))))
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}")))))
(check-sat)

(exit)
