(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}")))
; dll\x3F\w+updates\w+Host\x3aSoftwareHost\x3Ajoke
(assert (str.in_re X (re.++ (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:joke\u{a}"))))
; throughpjpoptwql\x2frlnjPOSTwebsearch\.getmirar\.comHost\x3Awww\x2EZSearchResults\x2EcomX-Mailer\x3A
(assert (str.in_re X (str.to_re "throughpjpoptwql/rlnjPOSTwebsearch.getmirar.comHost:www.ZSearchResults.com\u{13}X-Mailer:\u{13}\u{a}")))
(check-sat)
