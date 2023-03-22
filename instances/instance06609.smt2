(declare-const X String)
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\x3a\x2Fdesktop\x2F
(assert (not (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{a}"))))
; yddznydqir\x2feviaresflashdownloader\x2Ecom
(assert (not (str.in_re X (str.to_re "yddznydqir/eviaresflashdownloader.com\u{a}"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}")))
(check-sat)
