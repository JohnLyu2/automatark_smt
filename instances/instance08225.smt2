(declare-const X String)
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (str.in_re X (str.to_re "User-Agent:BetaWordixqshv/qzccsServer\u{0}\u{a}")))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp4/i\u{a}")))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.manifest") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.comToolBarKeylogger\u{a}"))))
(check-sat)
