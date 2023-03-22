(declare-const X String)
; Host\x3A\s+\.ico\x2FsLogearch195\.225\.Referer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico/sLogearch195.225.Referer:\u{a}")))))
(check-sat)
