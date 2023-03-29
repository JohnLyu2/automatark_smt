(declare-const X String)
; /\x2exbm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xbm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}")))))
; ^[A-Za-z]:\\([^"*/:?|<>\\.\x00-\x20]([^"*/:?|<>\\\x00-\x1F]*[^"*/:?|<>\\.\x00-\x20])?\\)*$
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to_re ":\u{5c}") (re.* (re.++ (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re ".") (re.range "\u{0}" " ")) (re.opt (re.++ (re.* (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (re.range "\u{0}" "\u{1f}"))) (re.union (str.to_re "\u{22}") (str.to_re "*") (str.to_re "/") (str.to_re ":") (str.to_re "?") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re ".") (re.range "\u{0}" " ")))) (str.to_re "\u{5c}"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
