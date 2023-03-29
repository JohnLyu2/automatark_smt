(declare-const X String)
; /filename=[^\n]*\x2eair/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".air/i\u{a}")))))
; \<script[^>]*>[\w|\t|\r\|\W]*?</script>
(assert (not (str.in_re X (re.++ (str.to_re "<script") (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "|") (str.to_re "\u{9}") (str.to_re "\u{d}") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</script>\u{a}")))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (not (str.in_re X (re.++ (str.to_re "Apofis") (re.* re.allchar) (str.to_re "Port.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered\u{a}")))))
(check-sat)

(exit)
