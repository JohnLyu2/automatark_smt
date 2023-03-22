(declare-const X String)
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in_re X (re.++ (str.to_re "/(?=") ((_ re.loop 300 300) (re.comp (str.to_re ")"))) (str.to_re "/\u{a}"))))
; CommonName.*st=\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "CommonName") (re.* re.allchar) (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServerUser-Agent:\u{a}"))))
; /filename=[^\n]*\x2esln/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sln/i\u{a}")))))
(check-sat)
