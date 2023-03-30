(declare-const X String)
; richfind\x2EcomCookie\x3aName=Your\+Host\+is\x3A
(assert (not (str.in_re X (str.to_re "richfind.comCookie:Name=Your+Host+is:\u{a}"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gni") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}"))))
; ([\r\n ]*//[^\r\n]*)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " "))) (str.to_re "//") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))))) (str.to_re "\u{a}"))))
; ^A([0-9]|10)$
(assert (str.in_re X (re.++ (str.to_re "A") (re.union (re.range "0" "9") (str.to_re "10")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ewrf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}")))))
(check-sat)

(exit)
