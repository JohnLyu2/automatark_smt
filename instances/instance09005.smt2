(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}"))))
; /filename=[^\n]*\x2eafm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".afm/i\u{a}"))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}")))))
(check-sat)
