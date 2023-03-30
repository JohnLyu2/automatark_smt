(declare-const X String)
; /\x2fb\x2fpkg\x2fT202[0-9a-z]{10}/U
(assert (str.in_re X (re.++ (str.to_re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/U\u{a}"))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}")))
; hirmvtg\x2fggqh\.kqh\w+whenu\x2Ecom\w+weatherHost\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "whenu.com\u{13}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "weatherHost:User-Agent:\u{a}"))))
(check-sat)

(exit)
