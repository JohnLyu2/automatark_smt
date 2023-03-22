(declare-const X String)
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.comdesksearch.dropspam.com\u{a}"))))
(check-sat)
