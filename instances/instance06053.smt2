(declare-const X String)
; \x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecommedia\x2Etop-banners\x2Ecom\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in_re X (str.to_re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\u{a}")))
; Toolbarverpop\x2Epopuptoast\x2Ecomtvshowticketscount\x2Eyok\x2Ecom
(assert (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}")))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}"))))
(check-sat)
