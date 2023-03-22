(declare-const X String)
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "page=largePass-Onseqepagqfphv/sfd\u{a}"))))
(check-sat)
