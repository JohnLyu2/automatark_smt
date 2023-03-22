(declare-const X String)
; actualnames\.com\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "actualnames.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fast-look.comwww.maxifiles.com\u{a}")))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
; /filename=[^\n]*\x2easf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asf/i\u{a}"))))
(check-sat)
