(declare-const X String)
; ^(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /document\.execCommand\(\s*[\x22\x27]InsertUnorderedList[\x22\x27]\s*\)\s*\x3B.{0,250}\s*\w+\.swapNode\(\s*[A-Za-z\(\)\"\'\.\=\ ]{1,75}\s*\)\s*document\.execCommand\(\s*[\x22\x27]Undo[\x22\x27]\s*\)\s*\x3B/smi
(assert (str.in_re X (re.++ (str.to_re "/document.execCommand(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "InsertUnorderedList") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ";") ((_ re.loop 0 250) re.allchar) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".swapNode(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 75) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "(") (str.to_re ")") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re "=") (str.to_re " "))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "document.execCommand(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "Undo") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ";/smi\u{a}"))))
; /\x2edxf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.dxf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}")))))
; ^(([a-z][0-9])|([0-9][a-z])|([a-z0-9][a-z0-9\-]{1,2}[a-z0-9])|([a-z0-9][a-z0-9\-](([a-z0-9\-][a-z0-9])|([a-z0-9][a-z0-9\-]))[a-z0-9\-]*[a-z0-9]))\.(co|me|org|ltd|plc|net|sch|ac|mod|nhs|police|gov)\.uk$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "a" "z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "a" "z")) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")) (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re ".") (re.union (str.to_re "co") (str.to_re "me") (str.to_re "org") (str.to_re "ltd") (str.to_re "plc") (str.to_re "net") (str.to_re "sch") (str.to_re "ac") (str.to_re "mod") (str.to_re "nhs") (str.to_re "police") (str.to_re "gov")) (str.to_re ".uk\u{a}"))))
(check-sat)

(exit)
