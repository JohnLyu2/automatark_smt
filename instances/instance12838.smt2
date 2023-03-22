(declare-const X String)
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in_re X (re.++ (str.to_re "/Libs/Starter") (re.union (str.to_re "CmdExec") (str.to_re "NetUtils") (str.to_re "Rec") (str.to_re "ScreenShots") (str.to_re "Settings")) (str.to_re ".py/\u{a}")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (not (str.in_re X (str.to_re "www.123mania.com/0409areZC-Bridge\u{a}"))))
(check-sat)
