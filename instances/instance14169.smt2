(declare-const X String)
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Location: https:") ((_ re.loop 2 2) (str.to_re "/")) (str.to_re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/"))) (str.to_re "/avcheck.exe\u{d}\u{a}\u{d}\u{a}/H\u{a}")))))
; DmInf\x5E\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "DmInf^") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServerUser-Agent:\u{a}")))))
(check-sat)
