(declare-const X String)
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in_re X (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}"))))
(check-sat)

(exit)
