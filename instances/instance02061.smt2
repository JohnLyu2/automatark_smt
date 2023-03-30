(declare-const X String)
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.* re.allchar) (str.to_re "Host:HWAEUser-Agent:\u{a}"))))
(check-sat)

(exit)
