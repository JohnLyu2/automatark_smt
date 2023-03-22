(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (str.in_re X (str.to_re "from:User-Agent:ChildWebGuardian\u{a}")))
(check-sat)
