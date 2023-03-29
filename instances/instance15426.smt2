(declare-const X String)
; User-Agent\x3Agpstool\x2eglobaladserver\x2ecom
(assert (not (str.in_re X (str.to_re "User-Agent:gpstool.globaladserver.com\u{a}"))))
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (str.in_re X (str.to_re "adblock.linkz.comwww.iggsey.comHost:\u{a}")))
; <script[\\.|\\W|\\w]*?</script>
(assert (str.in_re X (re.++ (str.to_re "<script") (re.* (re.union (str.to_re "\u{5c}") (str.to_re ".") (str.to_re "|") (str.to_re "W") (str.to_re "w"))) (str.to_re "</script>\u{a}"))))
(check-sat)

(exit)
