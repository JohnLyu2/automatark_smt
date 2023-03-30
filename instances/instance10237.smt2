(declare-const X String)
; /filename=[^\n]*\x2easx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asx/i\u{a}")))))
; ^[http://www.|www.][\S]+$
(assert (str.in_re X (re.++ (re.union (str.to_re "h") (str.to_re "t") (str.to_re "p") (str.to_re ":") (str.to_re "/") (str.to_re "w") (str.to_re ".") (str.to_re "|")) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}"))))
; Host\x3AHost\x3ALOGServer\.compressxpsp2-toolbar\x2Ehotblox\x2EcomAttached100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in_re X (str.to_re "Host:Host:LOGServer.compressxpsp2-toolbar.hotblox.comAttached100013Agentsvr^^Merlin\u{13}\u{a}"))))
; /filename=[^\n]*\x2enab/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".nab/i\u{a}"))))
(check-sat)

(exit)
