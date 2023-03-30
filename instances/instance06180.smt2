(declare-const X String)
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "ATTENTION:email\u{a}"))))
; (t|T)(o|O)\s\d{4}($|\D)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "t") (str.to_re "T")) (re.union (str.to_re "o") (str.to_re "O")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (re.comp (re.range "0" "9")) (str.to_re "\u{a}")))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.proventactics.com\u{a}"))))
; /filename=[^\n]*\x2epfa/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}"))))
(check-sat)

(exit)
