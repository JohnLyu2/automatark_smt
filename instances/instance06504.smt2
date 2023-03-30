(declare-const X String)
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}"))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}")))))
; MyBrowserSbAtsHost\x3A
(assert (not (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}"))))
; FCTB1\stoolbar\.anwb\.nlrichfind\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "FCTB1") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlrichfind.com\u{a}"))))
(check-sat)

(exit)
