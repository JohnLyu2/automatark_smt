(declare-const X String)
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
(check-sat)
