(declare-const X String)
; /filename=[^\n]*\x2efli/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fli/i\u{a}")))))
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "HTTPwwwProbnymomspyo/zowy\u{a}"))))
; Id\x3d\x5b\s+Host\x3A\s+www\x2Eyoogee\x2EcomHost\x3A\<title\>Actual
(assert (not (str.in_re X (re.++ (str.to_re "Id=[") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}Host:<title>Actual\u{a}")))))
; ^(1?)(-| ?)(\()?([0-9]{3})(\)|-| |\)-|\) )?([0-9]{3})(-| )?([0-9]{4}|[0-9]{4})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "1")) (re.union (str.to_re "-") (re.opt (str.to_re " "))) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ")") (str.to_re "-") (str.to_re " ") (str.to_re ")-") (str.to_re ") "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
