(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}")))
(check-sat)
