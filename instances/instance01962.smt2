(declare-const X String)
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "SupportFiles\u{13}") (re.* re.allchar) (str.to_re "Referer:\u{a}"))))
(check-sat)
