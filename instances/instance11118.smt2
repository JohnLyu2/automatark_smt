(declare-const X String)
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re "$") (str.to_re "%") (str.to_re "'") (str.to_re "-") (str.to_re "@") (str.to_re "{") (str.to_re "}") (str.to_re "~") (str.to_re "!") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "&") (str.to_re "^")) (str.to_re "\u{a}"))))
; Host\x3A\s+ulmxct\x2fmqoyc\s+securityOmFkbWluADROARad\x2Emokead\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "securityOmFkbWluADROARad.mokead.com\u{a}"))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{a}")))))
; Toolbar\w+www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.commedia.top-banners.com\u{a}")))))
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}//") (re.* re.allchar))))))
(check-sat)
