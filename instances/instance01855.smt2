(declare-const X String)
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
(check-sat)

(exit)
