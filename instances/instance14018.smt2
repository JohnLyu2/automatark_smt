(declare-const X String)
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\u{a}")))
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}"))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (str.in_re X (str.to_re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\u{a}")))
; (25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?|[0])\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?|[0])\.(25[0-5]|2[0-4][0-9]|[1][0-9]?[0-9]?|[1-9][0-9]?)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
