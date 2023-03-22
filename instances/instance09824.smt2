(declare-const X String)
; /filename=[^\n]*\x2ecsv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}")))))
; ("(([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|]+\\)*[^/\\:\*\?""<>\|]+(\.[^/\\:\*\?""<>\|]+[^/\\:\*\?""<>\|\s])?")|((([a-zA-Z]:)|(\\\\[^/\\:\*\?""<>\|\s]+(\\[a-zA-Z]\$)?))\\([^/\\:\*\?""<>\|\s]+\\)*[^/\\:\*\?""<>\|\s]+(\.[a-zA-Z0-9]+)?)
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{22}")) (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "\u{5c}") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "$"))))) (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{5c}"))) (re.+ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; ^[a-zA-Z0-9]{1,20}$
(assert (str.in_re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}")))
(check-sat)
