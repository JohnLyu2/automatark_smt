(declare-const X String)
; User-Agent\x3A\s+HXDownloadup
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownloadup\u{a}"))))
; ppcdomain\x2Eco\x2EukBasic
(assert (not (str.in_re X (str.to_re "ppcdomain.co.ukBasic\u{a}"))))
(check-sat)

(exit)
