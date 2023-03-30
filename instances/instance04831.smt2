(declare-const X String)
; /Referer\x3a\x20[\x20-\x7E]*?\/wp\x2dadmin\/[a-z\d\x2d]+?\.php\r\n/Hi
(assert (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.range " " "~")) (str.to_re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".php\u{d}\u{a}/Hi\u{a}"))))
(check-sat)

(exit)
