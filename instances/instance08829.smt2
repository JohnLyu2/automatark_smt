(declare-const X String)
; /^\x2f[0-9A-F]{42}$/Um
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/Um\u{a}"))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}")))
(check-sat)

(exit)
