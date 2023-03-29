(declare-const X String)
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (str.in_re X (re.++ (str.to_re "/Libs/Starter") (re.union (str.to_re "CmdExec") (str.to_re "NetUtils") (str.to_re "Rec") (str.to_re "ScreenShots") (str.to_re "Settings")) (str.to_re ".py/\u{a}"))))
; User-Agent\x3awww\x2Eadoptim\x2Ecom
(assert (str.in_re X (str.to_re "User-Agent:www.adoptim.com\u{a}")))
; ^((\\\\[a-zA-Z0-9-]+\\[a-zA-Z0-9`~!@#$%^&(){}'._-]+([ ]+[a-zA-Z0-9`~!@#$%^&(){}'._-]+)*)|([a-zA-Z]:))(\\[^ \\/:*?""<>|]+([ ]+[^ \\/:*?""<>|]+)*)*\\?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re "\u{5c}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re "'") (str.to_re ".") (str.to_re "_") (str.to_re "-"))) (re.* (re.++ (re.+ (str.to_re " ")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re "'") (str.to_re ".") (str.to_re "_") (str.to_re "-")))))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":"))) (re.* (re.++ (str.to_re "\u{5c}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.* (re.++ (re.+ (str.to_re " ")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))))))) (re.opt (str.to_re "\u{5c}")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2ewrf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}"))))
(check-sat)

(exit)
