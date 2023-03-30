(declare-const X String)
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\u{a}")))
; ^[a-zA-Z0-9]+(([_][a-zA-Z0-9])?[a-zA-Z0-9]*)*$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.++ (str.to_re "_") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; Host\x3A\s+User-Agent\x3A.*v\x3BApofisToolbarUser
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "v;ApofisToolbarUser\u{a}"))))
(check-sat)

(exit)
