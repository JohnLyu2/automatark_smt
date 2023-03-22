(declare-const X String)
; \x2FGR.*Report.*Host\x3APopup\.cfg
(assert (not (str.in_re X (re.++ (str.to_re "/GR") (re.* re.allchar) (str.to_re "Report") (re.* re.allchar) (str.to_re "Host:Popup.cfg\u{a}")))))
(check-sat)
