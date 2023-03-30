(declare-const X String)
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (not (str.in_re X (re.++ (str.to_re "M.zip") (re.* re.allchar) (str.to_re "w3who") (re.* re.allchar) (str.to_re "/cgi/logurl.cgiMyPostdll?HOST:\u{a}")))))
(check-sat)

(exit)
