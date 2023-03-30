(declare-const X String)
; /\x2ef4v([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.f4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /Referer\x3a[^\n]*fla\.php\?wq=[a-f0-9]+\x0d\x0a/H
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}")))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}"))))
(check-sat)

(exit)
