(declare-const X String)
; ^[1-9]{1}[0-9]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.com\u{a}")))))
; toolbar_domain_redirectriggiymd\x2fwdhi\.vhi
(assert (str.in_re X (str.to_re "toolbar_domain_redirectriggiymd/wdhi.vhi\u{a}")))
; /filename=[^\n]*\x2emaplet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}"))))
(check-sat)

(exit)
