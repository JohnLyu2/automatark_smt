(declare-const X String)
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (str.in_re X (re.++ (str.to_re "/Expression(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GetClass(\u{22}sun") re.allchar (str.to_re "awt") re.allchar (str.to_re "SunToolkit\u{22})") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}getField\u{22}/smi\u{a}"))))
; ^\$\d{1,3}(,?\d{3})*(\.\d{2})?$
(assert (str.in_re X (re.++ (str.to_re "$") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2enab/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".nab/i\u{a}")))))
; /filename=[^\n]*\x2erp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rp/i\u{a}"))))
(check-sat)
