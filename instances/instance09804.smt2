(declare-const X String)
; /filename=[^\n]*\x2epls/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pls/i\u{a}")))))
; /filename=[^\n]*\x2exls/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xls/i\u{a}")))))
; act=\s+User-Agent\x3AEvilFTPHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:EvilFTPHost:\u{a}")))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vqf/i\u{a}"))))
(check-sat)
