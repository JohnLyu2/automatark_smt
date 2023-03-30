(declare-const X String)
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "name.cnnic.cn") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "com/index.php?tpid=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[Static") (re.* re.allchar) (str.to_re "/bar_pl/b.fcgi\u{a}")))))
; ^(\d{3}-\d{3}-\d{4})*$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
