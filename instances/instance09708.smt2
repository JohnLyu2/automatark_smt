(declare-const X String)
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}"))))
; ^[A-Z]{2,4}[0-9][A-Z0-9]+$
(assert (str.in_re X (re.++ ((_ re.loop 2 4) (re.range "A" "Z")) (re.range "0" "9") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ^(\$|)([1-9]+\d{0,2}(\,\d{3})*|([1-9]+\d*))(\.\d{2})?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}")))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
(check-sat)
