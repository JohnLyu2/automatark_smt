(declare-const X String)
; /\x2egni([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.gni") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "to=") (re.* re.allchar) (str.to_re "JMail") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\u{a}")))))
; \x2FcommunicatortbHost\x3a
(assert (not (str.in_re X (str.to_re "/communicatortbHost:\u{a}"))))
(check-sat)

(exit)
