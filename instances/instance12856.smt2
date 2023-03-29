(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in_re X (str.to_re "subject:node=LoginNSIS_DOWNLOAD\u{a}"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in_re X (re.++ (str.to_re "\u{5c}s\u{5c}") ((_ re.loop 2 2) (str.to_re "d")) (str.to_re "-\u{5c}") ((_ re.loop 3 3) (str.to_re "w")) (str.to_re "-\u{5c}") ((_ re.loop 4 4) (str.to_re "d")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
