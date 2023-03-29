(declare-const X String)
; ^[\d]{3}[\s\-]*[\d]{3}[\s\-]*[\d]{4}\s*$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; Toolbar\dcount\x2Eyok\x2EcomweatherHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.range "0" "9") (str.to_re "count.yok.comweatherHost:User-Agent:\u{a}")))))
; bar\-navig\x2Eyandex\x2Eru\s+
(assert (not (str.in_re X (re.++ (str.to_re "bar-navig.yandex.ru") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
