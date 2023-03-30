(declare-const X String)
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}"))))
; ^([0-9][0-9])[.]([0-9][0-9])[.]([0-9][0-9])$
(assert (str.in_re X (re.++ (str.to_re "..\u{a}") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (str.in_re X (re.++ (str.to_re "Web-Mail") (re.range "0" "9") (str.to_re "Host:Host:LOG\u{a}"))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)

(exit)
