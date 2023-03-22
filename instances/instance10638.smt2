(declare-const X String)
; kl\x2Esearch\x2Eneed2find\x2Ecom\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in_re X (re.++ (str.to_re "kl.search.need2find.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}"))))
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (str.in_re X (re.++ (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>Host:\u{a}"))))
(check-sat)
