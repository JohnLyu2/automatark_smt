(declare-const X String)
; Admin\s+daosearch\x2EcomMyPostwww\.raxsearch\.comref\x3D\x25user\x5Fid
(assert (str.in_re X (re.++ (str.to_re "Admin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.comref=%user_id\u{a}"))))
(check-sat)
