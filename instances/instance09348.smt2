(declare-const X String)
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "a" "z")) (str.to_re "/U\u{a}")))))
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
(check-sat)
