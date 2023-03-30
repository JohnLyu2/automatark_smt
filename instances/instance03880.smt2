(declare-const X String)
; Host\x3aYOUR\x2Fxml\x2Ftoolbar\x2FGREATExplorerSecureNet
(assert (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}")))
(check-sat)

(exit)
