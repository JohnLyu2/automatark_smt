(declare-const X String)
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
; ([^\\"]|\\.)*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
