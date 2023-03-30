(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
; /filename=[^\n]*\x2eflac/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}"))))
(check-sat)

(exit)
