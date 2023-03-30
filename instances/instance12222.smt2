(declare-const X String)
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}")))))
; \x22Thewebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "\u{22}Thewebsearch.getmirar.com\u{a}")))
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "TT-Bot/mi\u{a}")))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}")))
(check-sat)

(exit)
