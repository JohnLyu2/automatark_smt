(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecomsearchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}"))))
; /\x2exspf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.xspf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\(\?[gimxs]{1,5}\)/
(assert (not (str.in_re X (re.++ (str.to_re "/(?") ((_ re.loop 1 5) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m") (str.to_re "x") (str.to_re "s"))) (str.to_re ")/\u{a}")))))
; /filename=[^\n]*\x2eeot/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}"))))
; /filename=[^\n]*\x2ecgm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cgm/i\u{a}")))))
(check-sat)

(exit)
