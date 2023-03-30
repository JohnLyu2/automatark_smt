(declare-const X String)
; A-311Host\x3Alnzzlnbk\x2fpkrm\.finSubject\x3a
(assert (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}")))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)

(exit)
