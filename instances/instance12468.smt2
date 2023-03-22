(declare-const X String)
; ^((\+)?(\d{2}[-]))?([0])?(\d{10}){1}?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-"))) (re.opt (str.to_re "0")) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; SecureNet.*\x2Fsearchfast\x2F
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.* re.allchar) (str.to_re "/searchfast/\u{a}"))))
; /^Referer\x3a\x20http\x3a\x2f\x2f[^\n]+\/\d{10,20}\x0d\x0a/Hm
(assert (str.in_re X (re.++ (str.to_re "/Referer: http://") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "/") ((_ re.loop 10 20) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/Hm\u{a}"))))
(check-sat)
