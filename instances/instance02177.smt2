(declare-const X String)
; Server\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar\x2Ehtml%3fSubject\x3AEveryware
(assert (str.in_re X (str.to_re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\u{a}")))
(check-sat)
