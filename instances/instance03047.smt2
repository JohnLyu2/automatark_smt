(declare-const X String)
; OS\x2F\dSpediacom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.range "0" "9") (str.to_re "Spediacom/index.php?tpid=\u{a}")))))
(check-sat)

(exit)
