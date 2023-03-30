(declare-const X String)
; /^GET\x20\/plus\x2easp\?[^\r\n]*?query=[a-z0-9+\/]{2,40}@{0,2}/i
(assert (not (str.in_re X (re.++ (str.to_re "/GET /plus.asp?") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "query=") ((_ re.loop 2 40) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/"))) ((_ re.loop 0 2) (str.to_re "@")) (str.to_re "/i\u{a}")))))
; /\x2eogg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ogg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \.exe\s+v2\x2E0\s+smrtshpr-cs-
(assert (not (str.in_re X (re.++ (str.to_re ".exe") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "v2.0") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "smrtshpr-cs-\u{13}\u{a}")))))
; www\x2Eyok\x2Ecom\s+jupitersatellites\x2Ebiz.*User-Agent\x3Aclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "www.yok.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.* re.allchar) (str.to_re "User-Agent:clvompycem/cen.vcn\u{a}")))))
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (str.in_re X (str.to_re "/\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}/\u{a}")))
(check-sat)

(exit)
