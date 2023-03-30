(declare-const X String)
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{a}"))))
(check-sat)

(exit)
