(declare-const X String)
; /nim:import\?[^\x22\x27>\s]*?filename=[^\x22\x27>\s]{485}/i
(assert (str.in_re X (re.++ (str.to_re "/nim:import?") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "filename=") ((_ re.loop 485 485) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/i\u{a}"))))
; Flooded\s+Host\x3A\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3DsidefindHost\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Flooded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AppName/GRSI|Server|\u{13}Host:origin=sidefindHost:User-Agent:\u{a}"))))
; /filename=[^\n]*\x2ecy3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cy3/i\u{a}")))))
; asdbiz\x2Ebiz\s+HWAEUser-Agent\x3ATheef2
(assert (not (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2\u{a}")))))
(check-sat)

(exit)
