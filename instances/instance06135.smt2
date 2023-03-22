(declare-const X String)
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.p2g") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.smil") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}"))))
(check-sat)
