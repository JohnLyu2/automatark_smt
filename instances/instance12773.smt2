(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}")))
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
(check-sat)
