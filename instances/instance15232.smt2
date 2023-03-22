(declare-const X String)
; /\x2em3u([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.m3u") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2eflac/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}"))))
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}")))
(check-sat)
