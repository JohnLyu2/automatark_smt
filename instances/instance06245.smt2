(declare-const X String)
; Host\x3A\s+Host\x3ASubject\x3anamedDownloadUser-Agent\x3aBackAtTaCk
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\u{a}"))))
; /filename=[^\n]*\x2eavi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}")))))
; /filename=[^\n]*\x2erdp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rdp/i\u{a}"))))
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}")))
(check-sat)

(exit)
