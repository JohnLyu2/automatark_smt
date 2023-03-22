(declare-const X String)
; [a-zA-Z0-9]*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "cache") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashcenter") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashrider") re.allchar (str.to_re "org")) (re.++ (str.to_re "webapp") re.allchar (str.to_re "serveftp") re.allchar (str.to_re "com")) (re.++ (str.to_re "web") re.allchar (str.to_re "autoflash") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "hopto") re.allchar (str.to_re "org")) (re.++ (str.to_re "web") re.allchar (str.to_re "velocitycache") re.allchar (str.to_re "com"))) (str.to_re "/smiH\u{a}"))))
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (str.in_re X (re.++ (str.to_re "/GET") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/") ((_ re.loop 64 64) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "HTTP/1/\u{a}"))))
; <\?xml.*</note>
(assert (str.in_re X (re.++ (str.to_re "<?xml") (re.* re.allchar) (str.to_re "</note>\u{a}"))))
(check-sat)
