(declare-const X String)
; /filename=[^\n]*\x2edws/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dws/i\u{a}")))))
; OSSProxy\s+%3f\s+Supervisor\s+User-Agent\x3ASearch\stoolbar\.anwb\.nlSpyAgentAdminBladeReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Search") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlSpyAgentAdminBladeReferer:\u{a}")))))
; \x2APORT2\x2Acdpnode=Host\x3A
(assert (str.in_re X (str.to_re "*PORT2*cdpnode=Host:\u{a}")))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}"))))
; (^\+?([1-8])?\d(\.\d+)?$)|(^-90$)|(^-(([1-8])?\d(\.\d+)?$))
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "+")) (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (str.to_re "-90") (re.++ (str.to_re "\u{a}-") (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)

(exit)
