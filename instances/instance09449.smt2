(declare-const X String)
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
; Host\x3A\s+Host\x3A.*c=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "c=MicrosoftStartupStarLoggerServerX-Mailer:\u{13}\u{a}"))))
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "+")) (re.range "0" "9") (re.opt (str.to_re " ")) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (str.to_re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 2 2) (re.range "0" "9"))))))
; /\/index\d{9}\.asp/i
(assert (not (str.in_re X (re.++ (str.to_re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re ".asp/i\u{a}")))))
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "ver") (re.range "0" "9") (str.to_re "Robert") (re.range "0" "9") (str.to_re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\u{a}"))))
(check-sat)

(exit)
