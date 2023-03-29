(declare-const X String)
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "FreeAccessBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostie") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:195.225.Subject:\u{a}")))))
(check-sat)

(exit)
