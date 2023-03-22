(declare-const X String)
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (not (str.in_re X (str.to_re "AgentanswerHost:tool.world2.cn\u{13}TCwhenu.com\u{13}\u{a}"))))
; ^\-?[0-9]{1,3}(\,[0-9]{3})*(\.[0-9]+)?$|^[0-9]+(\.[0-9]+)?$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (not (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:MailHost:MSNLOGOVN\u{a}")))))
; Host\x3A\s+twfofrfzlugq\x2feve\.qd\s+\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/supremetb\u{a}")))))
; User-Agent\x3AFiltered
(assert (not (str.in_re X (str.to_re "User-Agent:Filtered\u{a}"))))
(check-sat)
