(declare-const X String)
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; Admin\s+daosearch\x2EcomMyPostwww\.raxsearch\.comref\x3D\x25user\x5Fid
(assert (str.in_re X (re.++ (str.to_re "Admin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.comref=%user_id\u{a}"))))
(check-sat)
