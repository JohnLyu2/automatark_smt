(declare-const X String)
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (not (str.in_re X (str.to_re "OSSProxyHost:Subject:s_sq=aolsnssignin\u{a}"))))
(check-sat)
