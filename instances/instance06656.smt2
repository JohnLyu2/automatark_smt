(declare-const X String)
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.com\u{a}")))))
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (not (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}")))))
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}"))))
(check-sat)

(exit)
