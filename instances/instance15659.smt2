(declare-const X String)
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}")))))
; MailerHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "MailerHost:User-Agent:\u{a}"))))
(check-sat)

(exit)
