(declare-const X String)
; ^(\d{4})-((0[1-9])|(1[0-2]))-(0[1-9]|[12][0-9]|3[01])$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{a}"))))
; /<[A-Z]+\s+[^>]*?padding-left\x3A\x2D1000px\x3B[^>]*text-indent\x3A\x2D1000px/smi
(assert (str.in_re X (re.++ (str.to_re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (str.to_re "padding-left:-1000px;") (re.* (re.comp (str.to_re ">"))) (str.to_re "text-indent:-1000px/smi\u{a}"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}")))
; Toolbar\s+\x2APORT3\x2A\d+Host\x3AconfigINTERNAL\.ini
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "Host:configINTERNAL.ini\u{a}"))))
(check-sat)
