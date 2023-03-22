(declare-const X String)
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}")))
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.sum") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpf/i\u{a}")))))
(check-sat)
