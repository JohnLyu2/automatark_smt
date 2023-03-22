(declare-const X String)
; /filename=[^\n]*\x2ewps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}"))))
; URL\s+url=Host\x3ahttpUser-Agent\x3ASubject\x3A
(assert (str.in_re X (re.++ (str.to_re "URL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=Host:httpUser-Agent:Subject:\u{a}"))))
; /filename=[^\n]*\x2ejpg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpg/i\u{a}"))))
; Server\x3AWordTheHost\x3afrom
(assert (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}")))
(check-sat)
