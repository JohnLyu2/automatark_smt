(declare-const X String)
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (str.in_re X (re.++ (str.to_re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ^\s*[a-zA-Z0-9,&\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re "&") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2epub/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pub/i\u{a}")))))
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}")))
(check-sat)
