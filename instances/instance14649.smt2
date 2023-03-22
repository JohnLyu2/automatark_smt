(declare-const X String)
; ^.{0,0}
(assert (str.in_re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to_re "\u{a}"))))
; YOUR.*\x2Fsearchfast\x2F\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (str.in_re X (re.++ (str.to_re "YOUR") (re.* re.allchar) (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\u{a}"))))
(check-sat)
