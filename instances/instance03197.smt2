(declare-const X String)
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
(check-sat)
