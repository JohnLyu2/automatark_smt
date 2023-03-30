(declare-const X String)
; / \x2D .{1,20}\x07(LAN|PROXY|MODEM|MODEM BUSY|UNKNOWN)\x07Win/
(assert (not (str.in_re X (re.++ (str.to_re "/ - ") ((_ re.loop 1 20) re.allchar) (str.to_re "\u{7}") (re.union (str.to_re "LAN") (str.to_re "PROXY") (str.to_re "MODEM") (str.to_re "MODEM BUSY") (str.to_re "UNKNOWN")) (str.to_re "\u{7}Win/\u{a}")))))
(check-sat)

(exit)
