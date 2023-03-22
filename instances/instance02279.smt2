(declare-const X String)
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (str.in_re X (str.to_re "Host:logUser-Agent:onSubject:\u{a}")))
(check-sat)
