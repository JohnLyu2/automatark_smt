(declare-const X String)
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "toolbar.hotblox.com") (re.range "0" "9") (str.to_re "Host:http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}"))))
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}")))
; ((\d{0}[0-9]|\d{0}[1]\d{0}[0-2])(\:)\d{0}[0-5]\d{0}[0-9](\:)\d{0}[0-5]\d{0}[0-9]\s(AM|PM))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9")) (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (str.to_re "1") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "2"))) (str.to_re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (str.to_re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re "AM") (str.to_re "PM"))))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vqf/i\u{a}"))))
(check-sat)
