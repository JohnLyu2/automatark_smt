(declare-const X String)
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}"))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "cache") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashcenter") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashrider") re.allchar (str.to_re "org")) (re.++ (str.to_re "webapp") re.allchar (str.to_re "serveftp") re.allchar (str.to_re "com")) (re.++ (str.to_re "web") re.allchar (str.to_re "autoflash") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "hopto") re.allchar (str.to_re "org")) (re.++ (str.to_re "web") re.allchar (str.to_re "velocitycache") re.allchar (str.to_re "com"))) (str.to_re "/smiH\u{a}"))))
; ^([\w\._-]){3,}\@([\w\-_.]){3,}\.(\w){2,4}$
(assert (str.in_re X (re.++ (str.to_re "@.") ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}") ((_ re.loop 3 3) (re.union (str.to_re ".") (str.to_re "_") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "_") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 3 3) (re.union (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
; ^[A-Z]{3}(\s)?[0-9]{4}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
