(declare-const X String)
; ^[D-d][K-k]( |-)[1-9]{1}[0-9]{3}$
(assert (str.in_re X (re.++ (re.range "D" "d") (re.range "K" "k") (re.union (str.to_re " ") (str.to_re "-")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (str.in_re X (re.++ (str.to_re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "=Mozilla//UGi\u{a}"))))
; ^\d{4,}$|^[3-9]\d{2}$|^2[5-9]\d$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (re.range "3" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "5" "9") (re.range "0" "9") (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2edbp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dbp/i\u{a}")))))
; \x2Fcgi\x2Flogurl\.cgi\s+IDENTIFY.*max-www\x2Eu88\x2Ecn
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "max-www.u88.cn\u{a}"))))
(check-sat)

(exit)
