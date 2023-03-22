(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}")))
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}")))))
; /filename\=\d+\.swf/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "0" "9")) (str.to_re ".swf/H\u{a}")))))
(check-sat)
