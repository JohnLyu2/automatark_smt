(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHWAEHost\x3AHost\x3AHost\x3aStableUser-Agent\x3AUser-Agent\x3Awww\x2enavisearch\x2enet
(assert (not (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\u{a}"))))
(check-sat)

(exit)
