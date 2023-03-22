(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}"))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}"))))
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (not (str.in_re X (re.++ (str.to_re "ConnectionUser-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}")))))
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}")))
; WebConnLibNETObserveUser-Agent\x3Ahave100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in_re X (str.to_re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
