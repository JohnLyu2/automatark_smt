(declare-const X String)
; User-Agent\x3A\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
; \<\!doctype\s+(([^\s\>]+)\s+)?(([^\s\>]+)\s*)?(\"([^\/]+)\/\/([^\/]+)\/\/([^\s]+)\s([^\/]+)\/\/([^\"]+)\")?(\s*\"([^\"]+)\")?\>
(assert (str.in_re X (re.++ (str.to_re "<!doctype") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.+ (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.opt (re.++ (re.+ (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.opt (re.++ (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.comp (str.to_re "/"))) (str.to_re "//") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (str.to_re ">\u{a}"))))
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp3/i\u{a}")))))
; [^a-zA-Z0-9]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; ^[a-zA-z0-9]+[@]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to_re "@")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
