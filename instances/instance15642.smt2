(declare-const X String)
; MicrosoftHost\x3ASubject\x3anamedDownloadUser-Agent\x3a
(assert (not (str.in_re X (str.to_re "MicrosoftHost:Subject:namedDownloadUser-Agent:\u{a}"))))
; <[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)
