(declare-const X String)
; ^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-") (str.to_re " ")) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}"))))
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}//") (re.* re.allchar)))))
; /\x2em4a([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.m4a") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}")))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}"))))
(check-sat)
