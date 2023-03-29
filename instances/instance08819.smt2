(declare-const X String)
; /filename=[^\n]*\x2ebmp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bmp/i\u{a}")))))
; /^User-Agent\x3A[^\r\n]*malware/miH
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "malware/miH\u{a}")))))
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
(check-sat)

(exit)
