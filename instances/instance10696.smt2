(declare-const X String)
; /filename=[^\n]*\x2etar/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tar/i\u{a}")))))
; ^(([A-Za-z][A-Za-z0-9.+]*?){1,}?)(,\s?([^/\\:*?"<>|]*((,\s?(Version=(\d\.?){1,4}|Culture=(neutral|\w{2}-\w{2})|PublicKeyToken=[a-f0-9]{16})(,\s?)?){3}|))){0,1}$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "+"))))) (re.opt (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) ((_ re.loop 3 3) (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "Version=") ((_ re.loop 1 4) (re.++ (re.range "0" "9") (re.opt (str.to_re "."))))) (re.++ (str.to_re "Culture=") (re.union (str.to_re "neutral") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "-") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) (re.++ (str.to_re "PublicKeyToken=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))) (str.to_re "\u{a}"))))
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in_re X (re.++ (str.to_re "about") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{a}"))))
; \.exe\s+ZC-Bridge\s+TPSystemHost\x3AHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re ".exe") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ZC-Bridge") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystemHost:Host:\u{a}")))))
(check-sat)

(exit)
