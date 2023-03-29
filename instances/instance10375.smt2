(declare-const X String)
; /filename=[^\n]*\x2edxf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dxf/i\u{a}")))))
; PORT\x3D\s+User-Agent\x3A\s+ProAgentUI2Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "PORT=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ProAgentUI2Host:00000www.zhongsou.com\u{a}")))))
; /filename=[^\n]*\x2exfdl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xfdl/i\u{a}"))))
(check-sat)

(exit)
