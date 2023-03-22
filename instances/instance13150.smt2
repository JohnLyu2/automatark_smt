(declare-const X String)
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in_re X (re.++ (str.to_re "that") (re.* re.allchar) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "CasinoBladeisInsideupdate.cgiHost:\u{a}"))))
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (not (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}"))))
(check-sat)
