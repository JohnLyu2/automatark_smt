(declare-const X String)
; /\/r_autoidcnt\.asp\?mer_seq=\d[^\r\n]*\x26mac=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//r_autoidcnt.asp?mer_seq=") (re.range "0" "9") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}")))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}"))))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">")))))
(check-sat)

(exit)
