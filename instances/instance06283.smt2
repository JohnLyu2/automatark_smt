(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecomsearchreslt\x7D\x7BSysuptime\x3A
(assert (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}")))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
; passcorrect\x3B\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3Dversion
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}"))))
(check-sat)

(exit)
