(declare-const X String)
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TCP") (re.* re.allchar) (str.to_re "Toolbarads.grokads.com\u{a}"))))
; (^(2014)|^(2149))\d{11}$
(assert (str.in_re X (re.++ (re.union (str.to_re "2014") (str.to_re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\x00{7}\x53\x00{3}\x16.{8}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 7 7) (str.to_re "\u{0}")) (str.to_re "S") ((_ re.loop 3 3) (str.to_re "\u{0}")) (str.to_re "\u{16}") ((_ re.loop 8 8) re.allchar) (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ")") (str.to_re ";")) (str.to_re "/\u{a}")))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".aom/i\u{a}")))))
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "\u{9}") (re.range " " "~"))) (str.to_re "/P\u{a}"))))
(check-sat)
