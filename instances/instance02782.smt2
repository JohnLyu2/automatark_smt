(declare-const X String)
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}")))))
(check-sat)

(exit)
