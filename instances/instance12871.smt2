(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "&") (str.to_re "-") (str.to_re ".") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in_re X (str.to_re "fsbuffshprrprt-cs-\u{13}Host:\u{a}"))))
; /^\x2fnosignal\.jpg\?\d\.\d+$/U
(assert (str.in_re X (re.++ (str.to_re "//nosignal.jpg?") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:namediepluginHost:X-Mailer:\u{13}\u{a}"))))
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.range "0" "9")) (str.to_re "Host:HWAEUser-Agent:\u{a}"))))
(check-sat)
