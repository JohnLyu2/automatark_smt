(declare-const X String)
; \x1f\x8b\x08\x00.+\x00\x00
(assert (not (str.in_re X (re.++ (str.to_re "\u{1f}\u{8b}\u{8}\u{0}") (re.+ re.allchar) (str.to_re "\u{0}\u{0}\u{a}")))))
; ^(02\d\s?\d{4}\s?\d{4})|((01|05)\d{2}\s?\d{3}\s?\d{4})|((01|05)\d{3}\s?\d{5,6})|((01|05)\d{4}\s?\d{4,5})$
(assert (str.in_re X (re.union (re.++ (str.to_re "02") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 5 6) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))))))
; User-Agent\x3A.*community\w+\x0d\x0asubject=GhostVoice
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "community") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{d}\u{a}subject=GhostVoice\u{a}"))))
; ^([012346789][0-9]{4})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)

(exit)
