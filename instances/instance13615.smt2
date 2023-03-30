(declare-const X String)
; User-Agent\x3A\s+Robert
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Robert\u{a}"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}"))))
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "HTTP_RAT_\u{a}")))))
; User-Agent\x3Atwfofrfzlugq\x2feve\.qduuid=ppcdomain\x2Eco\x2EukGuardedReferer\x3AreadyLOGUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\u{a}"))))
(check-sat)

(exit)
