(declare-const X String)
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnj") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; ^ *([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[a-zA-Z]) *-* *(\d[a-zA-Z]\d) *$|^ *(\d{5}) *$|^ *(\d{5}) *-* *(\d{4}) *$
(assert (not (str.in_re X (re.union (re.++ (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.* (str.to_re "-")) (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.union (str.to_re "A") (str.to_re "a") (str.to_re "B") (str.to_re "b") (str.to_re "C") (str.to_re "c") (str.to_re "E") (str.to_re "e") (str.to_re "G") (str.to_re "g") (str.to_re "H") (str.to_re "h") (str.to_re "J") (str.to_re "j") (str.to_re "K") (str.to_re "k") (str.to_re "L") (str.to_re "l") (str.to_re "M") (str.to_re "m") (str.to_re "N") (str.to_re "n") (str.to_re "P") (str.to_re "p") (str.to_re "R") (str.to_re "r") (str.to_re "S") (str.to_re "s") (str.to_re "T") (str.to_re "t") (str.to_re "V") (str.to_re "v") (str.to_re "X") (str.to_re "x") (str.to_re "Y") (str.to_re "y")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.++ (re.* (str.to_re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to_re " "))) (re.++ (re.* (str.to_re " ")) ((_ re.loop 5 5) (re.range "0" "9")) (re.* (str.to_re " ")) (re.* (str.to_re "-")) (re.* (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to_re " ")) (str.to_re "\u{a}"))))))
; Referer\x3aHost\x3aport\x3aactivity
(assert (str.in_re X (str.to_re "Referer:Host:port:activity\u{a}")))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}")))))
(check-sat)

(exit)
