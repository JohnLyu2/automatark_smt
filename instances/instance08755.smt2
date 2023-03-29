(declare-const X String)
; Information\s+Host\x3A.*com
(assert (str.in_re X (re.++ (str.to_re "Information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "com\u{a}"))))
; /^Subject\x3A[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (not (str.in_re X (re.++ (str.to_re "/Subject:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Trojaner-Info") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Newsletter/smi\u{a}")))))
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; HANDYHost\x3aHost\x3aHost\x3Ayddznydqir\x2feviGatornewsSoftActivity
(assert (not (str.in_re X (str.to_re "HANDYHost:Host:Host:yddznydqir/eviGatornewsSoftActivity\u{13}\u{a}"))))
(check-sat)

(exit)
