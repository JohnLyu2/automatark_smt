(declare-const X String)
; ^([1-9]+)?[13579]$
(assert (not (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ("(([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|]+\\)*[^/\\:\*\?""<>\|]+(\.[^/\\:\*\?""<>\|]+[^/\\:\*\?""<>\|\s])?")|((([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|\s]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|\s]+\\)*[^/\\:\*\?""<>\|\s]+(\.[a-zA-Z0-9]+)?)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))))
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; ^([A-Z]{1,}[a-z]{1,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,}[A-Z]{0,}[a-z]{0,})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "A" "Z")) (re.* (re.range "a" "z"))))))
(check-sat)

(exit)
