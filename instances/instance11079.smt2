(declare-const X String)
; /filename=[^\n]*\x2epui/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pui/i\u{a}")))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}"))))
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.+ (re.union (str.to_re "\u{22}") (str.to_re " ") (str.to_re "'") (str.to_re "#") (str.to_re "*") (str.to_re "=") (str.to_re ",") (str.to_re ".") (str.to_re "\u{5c}") (str.to_re "(") (str.to_re ")") (str.to_re "/") (str.to_re "-") (str.to_re "$") (str.to_re "{") (str.to_re "}") (str.to_re "[") (str.to_re "]") (str.to_re "|") (str.to_re "?") (str.to_re "+") (str.to_re "^") (str.to_re "&") (str.to_re ":") (str.to_re "%") (str.to_re ";") (str.to_re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">\u{a}")))))
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "now") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/shdoclc.fcgiareHost:e2give.com\u{a}")))))
(check-sat)
