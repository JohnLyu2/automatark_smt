(declare-const X String)
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}"))))
(check-sat)

(exit)
