(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}"))))
; /\/jlnp\.html$/U
(assert (not (str.in_re X (str.to_re "//jlnp.html/U\u{a}"))))
; /\x2epfm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pfm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
