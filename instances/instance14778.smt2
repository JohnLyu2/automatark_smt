(declare-const X String)
; ^([4]{1})([0-9]{12,15})$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}")))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in_re X (re.++ (str.to_re "name.cnnic.cn") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "com/index.php?tpid=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[Static") (re.* re.allchar) (str.to_re "/bar_pl/b.fcgi\u{a}"))))
(check-sat)

(exit)
