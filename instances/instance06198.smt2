(declare-const X String)
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (not (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}"))))
; /\x2Faws\d{1,5}\.jsp\x3F/i
(assert (str.in_re X (re.++ (str.to_re "//aws") ((_ re.loop 1 5) (re.range "0" "9")) (str.to_re ".jsp?/i\u{a}"))))
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/communicatortb") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/GR") (re.* re.allchar) (str.to_re "Reportinfowhenu.com\u{13}\u{a}")))))
; ^(\+97[\s]{0,1}[\-]{0,1}[\s]{0,1}1|0)50[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "+97") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "1")) (str.to_re "0")) (str.to_re "50") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; t=[^\n\r]*Host\x3A\s+Basicaohobygi\x2fzwiw
(assert (not (str.in_re X (re.++ (str.to_re "t=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basicaohobygi/zwiw\u{a}")))))
(check-sat)
