(declare-const X String)
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (str.in_re X (str.to_re "GREATDriplineisUser-Agent:logs===========>\u{a}")))
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (str.in_re X (re.++ (str.to_re "Minutes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com\u{a}"))))
(check-sat)
