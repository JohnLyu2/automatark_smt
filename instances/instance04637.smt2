(declare-const X String)
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovplLogtraffbest\x2EbizAdToolsLoggedsidesearch\.dropspam\.com
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to_re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\u{a}")))))
(check-sat)

(exit)
