(declare-const X String)
; \x2Fnewsurfer4\x2FOK\r\nencodertvlistingsTM_SEARCH3
(assert (str.in_re X (str.to_re "/newsurfer4/OK\u{d}\u{a}encodertvlistingsTM_SEARCH3\u{a}")))
(check-sat)

(exit)
