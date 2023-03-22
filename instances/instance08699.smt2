(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}")))))
; OS\x2F\dSpediacom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.range "0" "9") (str.to_re "Spediacom/index.php?tpid=\u{a}")))))
; User-Agent\x3A\s+ocllceclbhs\x2fgthNeed2Find
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthNeed2Find\u{a}")))))
(check-sat)
