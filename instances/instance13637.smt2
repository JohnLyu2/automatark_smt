(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to_re "online-casino-searcher.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:\u{a}")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\u{a}")))
(check-sat)

(exit)
