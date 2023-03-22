(declare-const X String)
; /filename=[\x22\x27]?\d\.exe[\x22\x27]?/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.range "0" "9") (str.to_re ".exe") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/Hi\u{a}")))))
(check-sat)
