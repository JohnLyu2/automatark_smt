(declare-const X String)
; AD\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrent
(assert (str.in_re X (re.++ (str.to_re "AD") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|Current\u{a}"))))
; ^(\d*\s*\-?\s*\d*)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.range "0" "9")))))
; /\x2ecpe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cpe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "u") (str.to_re "-") (str.to_re "/") (str.to_re "s") (str.to_re "\u{a2}") (str.to_re ".") (str.to_re "$") (str.to_re "t")) (str.to_re "/sR\u{a}")))))
(check-sat)

(exit)
