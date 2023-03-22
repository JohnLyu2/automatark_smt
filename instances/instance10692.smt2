(declare-const X String)
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (str.to_re "Computeron:com>2.41\u{a}"))))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}")))
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in_re X (re.++ (str.to_re "/Libs/Starter") (re.union (str.to_re "CmdExec") (str.to_re "NetUtils") (str.to_re "Rec") (str.to_re "ScreenShots") (str.to_re "Settings")) (str.to_re ".py/\u{a}")))))
(check-sat)
