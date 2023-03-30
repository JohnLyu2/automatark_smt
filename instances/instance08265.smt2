(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}")))
; Spyware\s+ToolBar\s+User-Agent\x3AMM_RECO\x2EEXEToClientonAlert
(assert (str.in_re X (re.++ (str.to_re "Spyware") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXEToClientonAlert\u{a}"))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (not (str.in_re X (str.to_re "horoscope2YAHOOwww.2-seek.com/searchHost:\u{a}"))))
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd\u{a}"))))
(check-sat)

(exit)
