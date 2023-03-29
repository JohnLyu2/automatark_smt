(declare-const X String)
; /filename=[^\n]*\x2epsd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}"))))
; asdbiz\x2Ebiz\s+HWAEUser-Agent\x3ATheef2
(assert (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2\u{a}"))))
; ^\d+(\.\d+)?$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in_re X (str.to_re "dist.atlas-ia.comSpy-LockedOnlineconnection\u{a}"))))
(check-sat)

(exit)
