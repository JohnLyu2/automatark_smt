(declare-const X String)
; /User-Agent\:[^\x0a\x0d]+?Havij/H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Havij/H\u{a}")))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{a}")))))
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}")))))
; ((<body)|(<BODY))([^>]*)>
(assert (str.in_re X (re.++ (re.union (str.to_re "<body") (str.to_re "<BODY")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)

(exit)
