(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (not (str.in_re X (str.to_re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\u{a}"))))
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (not (str.in_re X (re.++ (str.to_re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to_re "com\u{a}")))))
(check-sat)
