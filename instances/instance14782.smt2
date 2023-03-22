(declare-const X String)
; <img\s((width|height|alt|align|style)="[^"]*"\s)*src="(\/?[a-z0-9_-]\/?)+\.(png|jpg|jpeg|gif)"(\s(width|height|alt|align|style)="[^"]*")*\s*\/>
(assert (not (str.in_re X (re.++ (str.to_re "<img") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* (re.++ (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "src=\u{22}") (re.+ (re.++ (re.opt (str.to_re "/")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")) (re.opt (str.to_re "/")))) (str.to_re ".") (re.union (str.to_re "png") (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "gif")) (str.to_re "\u{22}") (re.* (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/>\u{a}")))))
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.+ (re.range "0" "9")) (str.to_re "JMailBoxHostGENERAL_PARAM2\u{a}")))))
(check-sat)
