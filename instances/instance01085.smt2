(declare-const X String)
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}"))))
(check-sat)

(exit)
