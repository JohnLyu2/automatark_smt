(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (not (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}"))))
; /filename=[^\n]*\x2enab/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".nab/i\u{a}"))))
(check-sat)
