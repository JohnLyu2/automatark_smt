(declare-const X String)
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/Guptacharloomcompany.com\u{a}"))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^(\+?420)? ?[0-9]{3} ?[0-9]{3} ?[0-9]{3}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (str.to_re "420"))) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\/stat_svc\/$/U
(assert (not (str.in_re X (str.to_re "//stat_svc//U\u{a}"))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}")))
(check-sat)

(exit)
