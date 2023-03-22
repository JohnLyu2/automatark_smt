(declare-const X String)
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}"))))
(check-sat)
