(declare-const X String)
; hostie\s+freeIPaddrsBardata\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "hostie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "freeIPaddrsBardata.warezclient.comHost:User-Agent:\u{a}")))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
; /filename=[^\n]*\x2epmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}"))))
(check-sat)
