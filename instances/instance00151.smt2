(declare-const X String)
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (str.in_re X (re.++ (str.to_re "Reports") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "largePass-Onseqepagqfphv/sfd\u{a}"))))
(check-sat)
