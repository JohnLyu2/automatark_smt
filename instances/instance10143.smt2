(declare-const X String)
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in_re X (str.to_re "Activityfilename=\u{22}StarLoggerDAWeb-Mail\u{a}")))
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (str.in_re X (re.++ (str.to_re "http://\u{5c}") (re.opt re.allchar) (str.to_re "video\u{5c}") re.allchar (str.to_re "googl") (re.+ (str.to_re "e")) (str.to_re "\u{5c}") re.allchar (str.to_re "\u{5c}") ((_ re.loop 2 3) (str.to_re "w")) (str.to_re "/videoplay") (re.opt (str.to_re "\u{5c}")) (str.to_re "docid=") ((_ re.loop 19 19) (re.union (str.to_re "\u{5c}") (str.to_re "w") (str.to_re "-"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
