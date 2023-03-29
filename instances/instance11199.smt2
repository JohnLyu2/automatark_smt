(declare-const X String)
; frame_ver2\s+www\x2eurlblaze\x2enet\s+source\=IncrediFind\s+AgentHost\x3AHost\x3AHost\x3A\x2FGRSpynova3AFrom\x3A
(assert (not (str.in_re X (re.++ (str.to_re "frame_ver2") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.urlblaze.net") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "source=IncrediFind") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:Host:Host:/GRSpynova3AFrom:\u{a}")))))
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (not (str.in_re X (re.++ (str.to_re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY\u{a}")))))
; /filename=[^\n]*\x2ecue/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cue/i\u{a}"))))
(check-sat)

(exit)
