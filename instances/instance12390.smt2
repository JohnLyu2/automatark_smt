(declare-const X String)
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}"))))
; /filename=[^\n]*\x2ewrf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}"))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}")))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}")))
(check-sat)

(exit)
