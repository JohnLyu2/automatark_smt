(declare-const X String)
; Referer\x3Amywaynowpgwtjgxwthx\x2fbyb\.xkywww\x2Eu88\x2Ecnsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (str.to_re "Referer:mywaynowpgwtjgxwthx/byb.xkywww.u88.cnsource%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
(check-sat)

(exit)
