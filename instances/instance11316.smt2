(declare-const X String)
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.opt (str.to_re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "/") (re.opt (str.to_re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to_re ";") (str.to_re ",") (re.range "0" "9") (str.to_re "+"))) (str.to_re "/U\u{a}")))))
; /filename=[^\n]*\x2ecue/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cue/i\u{a}")))))
(check-sat)
