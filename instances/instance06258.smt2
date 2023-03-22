(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}"))))
; ^[1-9]\d$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}")))
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}"))))
(check-sat)
