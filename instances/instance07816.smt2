(declare-const X String)
; OSSProxy\s+%3f\s+Supervisor\s+User-Agent\x3ASearch\stoolbar\.anwb\.nlSpyAgentAdminBladeReferer\x3A
(assert (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Search") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlSpyAgentAdminBladeReferer:\u{a}"))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
(check-sat)
