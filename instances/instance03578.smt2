(declare-const X String)
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))
(check-sat)
