(declare-const X String)
; Host\x3A\sclvompycem\x2fcen\.vcn
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "clvompycem/cen.vcn\u{a}"))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
; /skillName\x3D\x7B\x28\x23/Ui
(assert (not (str.in_re X (str.to_re "/skillName={(#/Ui\u{a}"))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
(check-sat)
