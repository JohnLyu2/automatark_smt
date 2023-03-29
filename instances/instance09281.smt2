(declare-const X String)
; /(USER|NICK)\x20BOSS\x2d[A-Z0-9\x5b\x5d\x2d]{15}/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "USER") (str.to_re "NICK")) (str.to_re " BOSS-") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "[") (str.to_re "]") (str.to_re "-"))) (str.to_re "/\u{a}"))))
; /filename=[^\n]*\x2emet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".met/i\u{a}"))))
(check-sat)

(exit)
