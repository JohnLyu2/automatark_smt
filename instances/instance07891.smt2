(declare-const X String)
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}"))))
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";U:") ((_ re.loop 1 68) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";rv:/H\u{a}"))))
(check-sat)
