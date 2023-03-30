(declare-const X String)
; Host\x3Astech\x2Eweb-nexus\x2EnetHost\x3A
(assert (not (str.in_re X (str.to_re "Host:stech.web-nexus.netHost:\u{a}"))))
; if\s[(][A-Za-z]*\s[=]\s
(assert (not (str.in_re X (re.++ (str.to_re "if") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "(") (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")))))
; /Referer\x3a\s*?http\x3a\x2f{2}[a-z0-9\x2e\x2d]+\x2fs\x2f\x3fk\x3d/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "http:") ((_ re.loop 2 2) (str.to_re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "/s/?k=/Hi\u{a}")))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
(check-sat)

(exit)
