(declare-const X String)
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}"))))
; name\x2ecnnic\x2ecn\x2Fbar_pl\x2Fchk_bar\.fcgiHost\x3A\x7CConnected
(assert (str.in_re X (str.to_re "name.cnnic.cn/bar_pl/chk_bar.fcgiHost:|Connected\u{a}")))
(check-sat)
