(declare-const X String)
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (str.in_re X (str.to_re "Host:uploadServer3AdapupdEFErrorSubject:\u{a}")))
(check-sat)

(exit)
