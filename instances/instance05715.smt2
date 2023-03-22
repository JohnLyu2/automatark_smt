(declare-const X String)
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
(check-sat)
