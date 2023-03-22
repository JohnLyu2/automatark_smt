(declare-const X String)
; [A-Za-z](\.[A-Za-z0-9]|\-[A-Za-z0-9]|_[A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9])(\.[A-Za-z0-9]|\-[A-Za-z0-9]|_[A-Za-z0-9]|[A-Za-z0-9])*
(assert (not (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (re.++ (str.to_re ".") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "_") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")))) (re.* (re.union (re.++ (str.to_re ".") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "_") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2epng/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}"))))
; X-FILTERED-BY-GHOST\x3a\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "cache") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashcenter") re.allchar (str.to_re "info")) (re.++ (str.to_re "flashrider") re.allchar (str.to_re "org")) (re.++ (str.to_re "webapp") re.allchar (str.to_re "serveftp") re.allchar (str.to_re "com")) (re.++ (str.to_re "web") re.allchar (str.to_re "autoflash") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "dyndns") re.allchar (str.to_re "info")) (re.++ (str.to_re "webupdate") re.allchar (str.to_re "hopto") re.allchar (str.to_re "org")) (re.++ (str.to_re "web") re.allchar (str.to_re "velocitycache") re.allchar (str.to_re "com"))) (str.to_re "/smiH\u{a}"))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}"))))
(check-sat)
