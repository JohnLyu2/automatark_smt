(declare-const X String)
; /^Referer\x3a\x20http\x3a\x2f\x2f[^\n]+\/\d{10,20}\x0d\x0a/Hm
(assert (not (str.in_re X (re.++ (str.to_re "/Referer: http://") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "/") ((_ re.loop 10 20) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/Hm\u{a}")))))
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (str.in_re X (re.++ (str.to_re "/update/barcab/") (re.* re.allchar) (str.to_re "tn=") (re.* re.allchar) (str.to_re "id=") (re.* re.allchar) (str.to_re "version=/smi\u{a}"))))
(check-sat)
