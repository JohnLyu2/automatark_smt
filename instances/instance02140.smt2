(declare-const X String)
; myway\.comzmnjgmomgbdz\x2fzzmw\.gztUser-Agent\x3A
(assert (str.in_re X (str.to_re "myway.comzmnjgmomgbdz/zzmw.gztUser-Agent:\u{a}")))
(check-sat)
