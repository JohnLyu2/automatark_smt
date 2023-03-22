(declare-const X String)
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (str.to_re "'") (re.* (re.++ (re.* (re.union (str.to_re "'") (str.to_re "\u{5c}"))) (str.to_re "\u{5c}") re.allchar)) (re.* (re.union (str.to_re "'") (str.to_re "\u{5c}"))) (str.to_re "'"))) (str.to_re "\u{a}")))))
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}toolbar.wishbone.com\u{a}"))))
(check-sat)
