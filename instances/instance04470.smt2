(declare-const X String)
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "toolbar.hotblox.com") (re.range "0" "9") (str.to_re "Host:http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}"))))
(check-sat)
