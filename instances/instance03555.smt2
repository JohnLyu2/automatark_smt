(declare-const X String)
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (not (str.in_re X (re.++ (str.to_re "www.searchinweb.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}")))))
(check-sat)
