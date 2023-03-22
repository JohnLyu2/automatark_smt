(declare-const X String)
; HANDY\s+newsSoftActivitypassword\x3B1\x3BOptixtv\x2E180solutions\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "HANDY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newsSoftActivity\u{13}password;1;Optixtv.180solutions.com\u{a}"))))
; /filename=[^\n]*\x2emaplet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}"))))
(check-sat)
