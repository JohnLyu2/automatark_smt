(declare-const X String)
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (str.in_re X (re.++ (str.to_re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "]") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to_re "=") (re.* re.allchar) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.comp (str.to_re "["))) (str.to_re "\u{a}"))))
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (not (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}"))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}"))))
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
(check-sat)

(exit)
