(declare-const X String)
; www\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "www") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}"))))
(check-sat)
