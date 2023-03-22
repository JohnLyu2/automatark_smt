(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}")))))
(check-sat)
