(declare-const X String)
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (str.in_re X (str.to_re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\u{13}\u{a}")))
; ^[a-zA-Z0-9][a-zA-Z0-9_]{2,29}$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 29) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}"))))
; ^\d*[0-9](|.\d*[0-9]|)*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.* (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (str.in_re X (str.to_re "OSSProxyHost:Subject:s_sq=aolsnssignin\u{a}")))
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/iP\u{a}"))))
(check-sat)
