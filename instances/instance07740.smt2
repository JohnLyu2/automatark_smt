(declare-const X String)
; ^[1-9][0-9]{3}\s?[a-zA-Z]{2}$
(assert (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "cache") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashcenter") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashrider") re.allchar (str.to_re "org")) (re.++ (str.to_re "webapp") re.allchar (str.to_re "serveftp") re.allchar (str.to_re "com")) (re.++ (str.to_re "web") re.allchar (str.to_re "autoflash") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "hopto") re.allchar (str.to_re "org")) (re.++ (str.to_re "web") re.allchar (str.to_re "velocitycache") re.allchar (str.to_re "com"))) (str.to_re "/smiH\u{a}"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "www.2-seek.com/search") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystem\u{a}")))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (str.in_re X (str.to_re "Daemonwww.lookquick.comHost:\u{a}")))
(check-sat)
