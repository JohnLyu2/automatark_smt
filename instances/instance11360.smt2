(declare-const X String)
; search\x2econduit\x2ecom\sPARSER.*
(assert (str.in_re X (re.++ (str.to_re "search.conduit.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSER") (re.* re.allchar) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}"))))
; FTP\s+\x2FNFO\x2CRegistered\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.com\u{a}"))))
; /filename=[^\n]*\x2ebcl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}"))))
; ads\.grokads\.com\s+deskwizz\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "ads.grokads.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "deskwizz.com\u{a}"))))
(check-sat)

(exit)
