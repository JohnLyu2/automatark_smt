(declare-const X String)
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownload") (re.* re.allchar) (str.to_re "Referer:GREATDripline\u{a}")))))
(check-sat)
