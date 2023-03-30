(declare-const X String)
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2erat/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rat/i\u{a}"))))
; Theef2\sHost\x3A\s+User-Agent\x3awww\x2Esogou\x2EcomUser-Agent\x3AMyPostToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Theef2") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:www.sogou.comUser-Agent:MyPostToolbar\u{a}")))))
(check-sat)

(exit)
