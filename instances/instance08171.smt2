(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
; ^0?(5[024])(\-)?\d{7}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}5") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4")))))
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*(\.\d{1,2})?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to_re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}")))
(check-sat)
