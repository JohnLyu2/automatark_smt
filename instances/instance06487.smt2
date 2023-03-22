(declare-const X String)
; /filename=[^\n]*\x2ehhk/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hhk/i\u{a}"))))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp4/i\u{a}")))))
; ^[A-Z]{4}[1-8](\d){2}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; name\x2ecnnic\x2ecn\x2Fbar_pl\x2Fchk_bar\.fcgiHost\x3A\x7CConnected
(assert (str.in_re X (str.to_re "name.cnnic.cn/bar_pl/chk_bar.fcgiHost:|Connected\u{a}")))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.fli") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
