(declare-const X String)
; zopabora\x2Einfo\s+Inside\s+SystemSleuth\s+www\x2Eyok\x2EcomHost\x3AInformationwww\x2Ezhongsou\x2EcomLite
(assert (not (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yok.comHost:Informationwww.zhongsou.comLite\u{a}")))))
(check-sat)

(exit)
