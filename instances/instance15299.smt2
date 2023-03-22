(declare-const X String)
; /filename=[^\n]*\x2epaq8o/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".paq8o/i\u{a}"))))
; ^(389)[0-9]{11}$
(assert (not (str.in_re X (re.++ (str.to_re "389") ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (str.in_re X (re.++ (str.to_re "[0-9") ((_ re.loop 4 4) (str.to_re "]")) (str.to_re "-[0-9") ((_ re.loop 2 2) (str.to_re "]")) (str.to_re "-[0-9") ((_ re.loop 2 2) (str.to_re "]")) (str.to_re "\u{a}"))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.proventactics.com\u{a}")))))
; /<body[^>]+?style\s*=\s*[\x22\x27](-ms-)?behavior\s*:.*?<body[^>]+?onreadystatechange\s*=[^>]+?>[\s\t\r\n]*?<\/body/si
(assert (str.in_re X (re.++ (str.to_re "/<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (str.to_re "-ms-")) (str.to_re "behavior") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* re.allchar) (str.to_re "<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "onreadystatechange") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.+ (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "\u{9}") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "</body/si\u{a}"))))
(check-sat)
