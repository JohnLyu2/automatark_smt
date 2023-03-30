(declare-const X String)
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (str.in_re X (re.++ (str.to_re "M.zip") (re.* re.allchar) (str.to_re "w3who") (re.* re.allchar) (str.to_re "/cgi/logurl.cgiMyPostdll?HOST:\u{a}"))))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}"))))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (str.to_re "Host:AddressDaemonUser-Agent:User-Agent:\u{a}"))))
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/iP\u{a}"))))
; Referer\x3aHost\x3aport\x3aactivity
(assert (not (str.in_re X (str.to_re "Referer:Host:port:activity\u{a}"))))
(check-sat)

(exit)
