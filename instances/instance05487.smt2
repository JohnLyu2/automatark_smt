(declare-const X String)
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}"))))
(check-sat)

(exit)
