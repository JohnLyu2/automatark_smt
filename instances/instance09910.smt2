(declare-const X String)
; User-Agent\x3A\w+Minutes\sHost\x3Awww\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtml
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Minutes") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:www.eblocs.com\u{1b}Host:RunnerHost:.html\u{a}")))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re "$") (str.to_re "%") (str.to_re "'") (str.to_re "-") (str.to_re "@") (str.to_re "{") (str.to_re "}") (str.to_re "~") (str.to_re "!") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "&") (str.to_re "^")) (str.to_re "\u{a}")))))
; ^[A-Z0-9\\-\\&-]{5,12}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 12) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "\u{5c}" "\u{5c}") (str.to_re "&") (str.to_re "-"))) (str.to_re "\u{a}")))))
; myway\.com\s+SupervisorPalUser-Agent\x3ASearch
(assert (not (str.in_re X (re.++ (str.to_re "myway.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SupervisorPalUser-Agent:Search\u{a}")))))
(check-sat)

(exit)
