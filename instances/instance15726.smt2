(declare-const X String)
; Server.*Host\x3a.*SpyAgentRootHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:\u{a}")))))
; [-+]((0[0-9]|1[0-3]):([03]0|45)|14:00)
(assert (str.in_re X (re.++ (re.union (str.to_re "-") (str.to_re "+")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "3"))) (str.to_re ":") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "3")) (str.to_re "0")) (str.to_re "45"))) (str.to_re "14:00")) (str.to_re "\u{a}"))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{a}")))))
(check-sat)

(exit)
