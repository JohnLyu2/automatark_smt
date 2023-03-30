(declare-const X String)
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (not (str.in_re X (str.to_re "WinCrashcomHost:tid=%toolbar_id4.8.4\u{a}"))))
(check-sat)

(exit)
