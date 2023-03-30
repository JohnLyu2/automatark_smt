(declare-const X String)
; WinSession\w+asdbiz\x2Ebiz\dpjpoptwql\x2frlnj\x2Fpagead\x2Fads\?
(assert (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "pjpoptwql/rlnj/pagead/ads?\u{a}"))))
; ((http|https|ftp|telnet|gopher|ms\-help|file|notes)://)?(([a-z][\w~%!&',;=\-\.$\(\)\*\+]*)(:.*)?@)?(([a-z0-9][\w\-]*[a-z0-9]*\.)*(((([a-z0-9][\w\-]*[a-z0-9]*)(\.[a-z0-9]+)?)|(((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)))(:[0-9]+)?))?(((/([\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(%\d\d))+)*/([\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(%\d\d))*)(\?[^#]+)?(#[a-z0-9]\w*)?)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "telnet") (str.to_re "gopher") (str.to_re "ms-help") (str.to_re "file") (str.to_re "notes")) (str.to_re "://"))) (re.opt (re.++ (re.opt (re.++ (str.to_re ":") (re.* re.allchar))) (str.to_re "@") (re.range "a" "z") (re.* (re.union (str.to_re "~") (str.to_re "%") (str.to_re "!") (str.to_re "&") (str.to_re "'") (str.to_re ",") (str.to_re ";") (str.to_re "=") (str.to_re "-") (str.to_re ".") (str.to_re "$") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.opt (re.++ (re.* (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))))) (re.opt (re.++ (re.opt (re.++ (str.to_re "?") (re.+ (re.comp (str.to_re "#"))))) (re.opt (re.++ (str.to_re "#") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (re.++ (str.to_re "%") (re.range "0" "9") (re.range "0" "9")) (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "=") (str.to_re ";") (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "^") (str.to_re "(") (str.to_re ")") (str.to_re "|") (str.to_re "{") (str.to_re "}") (str.to_re "[") (str.to_re "]") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") (re.range "0" "9") (re.range "0" "9")) (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "$") (str.to_re "=") (str.to_re ";") (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "^") (str.to_re "(") (str.to_re ")") (str.to_re "|") (str.to_re "{") (str.to_re "}") (str.to_re "[") (str.to_re "]") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; /^\/index\.php\?[A-Za-z0-9_-]{15}=l3S/U
(assert (not (str.in_re X (re.++ (str.to_re "//index.php?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (str.to_re "=l3S/U\u{a}")))))
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}")))))
(check-sat)

(exit)
