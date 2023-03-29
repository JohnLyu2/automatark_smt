(declare-const X String)
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in_re X (re.++ (re.+ (str.to_re "(")) (re.* (re.comp (str.to_re ")"))) (re.+ (str.to_re ")")) (str.to_re "\u{a}")))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}"))))
; tb\x2Efreeprod\x2Ecom\s+Web\.fcgiclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "tb.freeprod.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Web.fcgiclvompycem/cen.vcn\u{a}")))))
; (^\d{5}\x2D\d{3}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
; e2give\.com.*Host\x3A.*Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)
