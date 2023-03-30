(declare-const X String)
; Bar\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecomc\.goclick\.com
(assert (str.in_re X (str.to_re "Bar/newsurfer4/client=BysooTBADdcww.dmcast.comc.goclick.com\u{a}")))
(check-sat)

(exit)
