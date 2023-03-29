(declare-const X String)
; Host\x3A\s+User-Agent\x3A.*v\x3BApofisToolbarUser
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "v;ApofisToolbarUser\u{a}")))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStriketvlistingsUser-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.range "0" "9") (str.to_re "<title>Actual") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "SpywareStriketvlistingsUser-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\u{a}"))))
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_")))) (re.++ (str.to_re "\u{a}_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))))))))
; &( )
(assert (str.in_re X (str.to_re "& \u{a}")))
(check-sat)

(exit)
