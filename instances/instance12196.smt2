(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}"))))
; ^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "3")) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9"))) (str.to_re "::\u{a}") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.range "0" "5")) (re.range "0" "9"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}")))
(check-sat)
