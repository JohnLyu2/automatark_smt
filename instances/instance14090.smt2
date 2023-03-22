(declare-const X String)
; UI2AgentConnectedDesktopSubject\x3Aixqshv\x2fqzccsactualnames\.com
(assert (not (str.in_re X (str.to_re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\u{a}"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}")))))
(check-sat)
