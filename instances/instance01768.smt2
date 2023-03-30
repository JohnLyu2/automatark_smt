(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
(check-sat)

(exit)
