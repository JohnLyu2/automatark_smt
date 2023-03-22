(declare-const X String)
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (str.in_re X (str.to_re "Host:User-Agent:www.raxsearch.com\u{a}")))
(check-sat)
