(declare-const X String)
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
; (1[8,9]|20)[0-9]{2}
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re ",") (str.to_re "9"))) (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
