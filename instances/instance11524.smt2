(declare-const X String)
; /filename=[^\n]*\x2ewrf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}")))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (not (str.in_re X (str.to_re "Host:Subject:From:\u{d0}\u{c5}\u{cf}\u{a2}\u{a}"))))
; offers\x2Ebullseye-network\x2Ecom\s+news[^\n\r]*WatcherUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "offers.bullseye-network.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WatcherUser-Agent:\u{a}")))))
; ^[a-zA-Z]+((((\-)|(\s))[a-zA-Z]+)?(,(\s)?(((j|J)|(s|S))(r|R)(\.)?|II|III|IV))?)?$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.opt (re.++ (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J") (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "r") (str.to_re "R")) (re.opt (str.to_re "."))) (str.to_re "II") (str.to_re "III") (str.to_re "IV")))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
