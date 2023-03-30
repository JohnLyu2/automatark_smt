(declare-const X String)
; /filename=[^\n]*\x2epptx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pptx/i\u{a}")))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (not (str.in_re X (re.++ (str.to_re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to_re "TM_SEARCH3engineto=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":\u{a}")))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in_re X (re.++ (str.to_re "/?spl=") (re.range "0" "9") (str.to_re "&br=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&vers=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&s=/H\u{a}")))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "subject:") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)

(exit)
