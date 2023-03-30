(declare-const X String)
; /filename=[^\n]*\x2eqcp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".qcp/i\u{a}"))))
; /filename=[^\n]*\x2etorrent/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".torrent/i\u{a}")))))
(check-sat)

(exit)
