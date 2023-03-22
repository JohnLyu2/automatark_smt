(declare-const X String)
; BysooTBUser-Agent\x3A
(assert (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}")))
; to\d+User-Agent\x3AFiltered
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{a}"))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (str.in_re X (re.++ (str.to_re "/domain=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "$(") (str.to_re "%3b") (str.to_re "%60") (str.to_re "%24%28") (str.to_re ";") (str.to_re "`")) (str.to_re "/Pi\u{a}"))))
; HWPEMycount\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "HWPEMycount.yok.com\u{a}")))
(check-sat)
