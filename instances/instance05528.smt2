(declare-const X String)
; zopabora\x2Einfo\s+Inside.*User-Agent\x3A\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2FMicrosoft
(assert (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}serverUser-Agent:/newsurfer4/Microsoft\u{a}"))))
(check-sat)

(exit)
