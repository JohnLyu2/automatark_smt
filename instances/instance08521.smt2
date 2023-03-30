(declare-const X String)
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in_re X (re.++ (str.to_re "/encoding=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}")))))
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (not (str.in_re X (str.to_re "/\u{b6}\u{b6}\u{ff}\u{ff}\u{ff}\u{ff}/\u{a}"))))
; ^[^']*$
(assert (not (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}")))))
; cdpnode=\w+Authorization\x3aname\x2ecnnic\x2ecn
(assert (str.in_re X (re.++ (str.to_re "cdpnode=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Authorization:name.cnnic.cn\u{a}"))))
; /\.php\?[a-z]{2,8}=[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\&[a-z]{2,8}=/U
(assert (str.in_re X (re.++ (str.to_re "/.php?") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "&") ((_ re.loop 2 8) (re.range "a" "z")) (str.to_re "=/U\u{a}"))))
(check-sat)

(exit)
