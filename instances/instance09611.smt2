(declare-const X String)
; www\x2Eyok\x2Ecom\s+jupitersatellites\x2Ebiz.*User-Agent\x3Aclvompycem\x2fcen\.vcn
(assert (str.in_re X (re.++ (str.to_re "www.yok.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.* re.allchar) (str.to_re "User-Agent:clvompycem/cen.vcn\u{a}"))))
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.j2k") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (\s*\S*){2}(ipsum)(\S*\s*){2}
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) (str.to_re "ipsum") ((_ re.loop 2 2) (re.++ (re.* (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
; (^0[78][2347][0-9]{7})
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}0") (re.union (str.to_re "7") (str.to_re "8")) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "7")) ((_ re.loop 7 7) (re.range "0" "9"))))))
(check-sat)
