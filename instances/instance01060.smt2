(declare-const X String)
; Wareztv\x2Eseekmo\x2Ecom\sKeyloggingTRUSTYFILES\x2ECOM
(assert (not (str.in_re X (re.++ (str.to_re "Wareztv.seekmo.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Keylogging\u{13}TRUSTYFILES.COM\u{a}")))))
(check-sat)

(exit)
