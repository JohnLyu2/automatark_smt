(declare-const X String)
; ^(\d){8}$
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
; ((www|http)(\W+\S+[^).,:;?\]\} \r\n$]+))
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "www") (str.to_re "http")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.union (str.to_re ")") (str.to_re ".") (str.to_re ",") (str.to_re ":") (str.to_re ";") (str.to_re "?") (str.to_re "]") (str.to_re "}") (str.to_re " ") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re "$"))))))
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (not (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}")))))
; User-Agent\x3a.*%3f\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}")))))
(check-sat)
