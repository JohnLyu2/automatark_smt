(declare-const X String)
; ^[A-Za-z]{2}[0-9]{6}[A-Za-z]{1}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; \x2Fnewsurfer4\x2FOK\r\nencodertvlistingsTM_SEARCH3
(assert (str.in_re X (str.to_re "/newsurfer4/OK\u{d}\u{a}encodertvlistingsTM_SEARCH3\u{a}")))
; /filename=[^\n]*\x2ertx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rtx/i\u{a}")))))
(check-sat)
