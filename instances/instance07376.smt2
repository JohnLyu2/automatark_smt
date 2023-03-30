(declare-const X String)
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to_re "\u{0}\u{0}\u{0}\u{0}") ((_ re.loop 12 12) re.allchar)))) (str.to_re "/s\u{a}"))))
; /\x2fblackmuscats?\x3f\d/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//blackmuscat") (re.opt (str.to_re "s")) (str.to_re "?") (re.range "0" "9") (str.to_re "/Ui\u{a}")))))
; /filename=[^\n]*\x2emka/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mka/i\u{a}")))))
(check-sat)

(exit)
