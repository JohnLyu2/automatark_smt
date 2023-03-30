(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in_re X (str.to_re "http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}")))
; DigExtNetBus\x5BStatic
(assert (not (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}"))))
; /\/jorg\.html$/U
(assert (not (str.in_re X (str.to_re "//jorg.html/U\u{a}"))))
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
(check-sat)

(exit)
