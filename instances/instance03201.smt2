(declare-const X String)
; Referer\x3A\s+HXDownload\w+installs\x2Eseekmo\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownload") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "installs.seekmo.com\u{a}"))))
(check-sat)
