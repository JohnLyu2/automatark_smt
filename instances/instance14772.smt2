(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}")))
(check-sat)

(exit)
