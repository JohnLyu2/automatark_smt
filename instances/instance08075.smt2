(declare-const X String)
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}"))))
; ^([^:])+\\.([^:])+$
(assert (str.in_re X (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{5c}") re.allchar (re.+ (re.comp (str.to_re ":"))) (str.to_re "\u{a}"))))
(check-sat)
