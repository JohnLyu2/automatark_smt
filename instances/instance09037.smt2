(declare-const X String)
; UI2AgentConnectedDesktopSubject\x3Aixqshv\x2fqzccsactualnames\.com
(assert (not (str.in_re X (str.to_re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\u{a}"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in_re X (re.++ (str.to_re "/(?=") ((_ re.loop 300 300) (re.comp (str.to_re ")"))) (str.to_re "/\u{a}"))))
(check-sat)

(exit)
