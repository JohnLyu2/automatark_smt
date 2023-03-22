(declare-const X String)
; to\s+User-Agent\x3Acid=tb\x2eCookie\x3A\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:/images/nocache/tr/gca/m.gif?\u{a}"))))
(check-sat)
