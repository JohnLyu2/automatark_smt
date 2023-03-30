(declare-const X String)
; Host\x3A\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.comSubject\x3aHost\x3a
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\u{a}"))))
; /^tcpdata\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/tcpdata|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}"))))
; Host\x3AHost\x3Abody=\x2521\x2521\x2521Optix
(assert (not (str.in_re X (str.to_re "Host:Host:body=%21%21%21Optix\u{13}\u{a}"))))
(check-sat)

(exit)
