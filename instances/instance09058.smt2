(declare-const X String)
; /filename=[^\n]*\x2ejfif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}"))))
; /^From\x3A[^\r\n]*Trojaner-Info<webmaster@trojaner-info\x2Ede>/smi
(assert (not (str.in_re X (re.++ (str.to_re "/From:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Trojaner-Info<webmaster@trojaner-info.de>/smi\u{a}")))))
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}")))))
(check-sat)
