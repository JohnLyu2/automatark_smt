(declare-const X String)
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (not (str.in_re X (re.++ (str.to_re "/onload") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "location.reload") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(/smi\u{a}")))))
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to_re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "&a=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)

(exit)
