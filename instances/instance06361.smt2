(declare-const X String)
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (str.in_re X (str.to_re "dist.atlas-ia.comSpy-LockedOnlineconnection\u{a}")))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2egif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gif/i\u{a}"))))
(check-sat)

(exit)
