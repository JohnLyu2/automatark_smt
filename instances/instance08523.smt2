(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (not (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}"))))
; UI2ftpquickbrutehttp\x3A\x2F\x2Fdiscounts\x2Eshopathome\x2Ecom\x2Fframeset\x2Easp\?
(assert (str.in_re X (str.to_re "UI2ftpquickbrutehttp://discounts.shopathome.com/frameset.asp?\u{a}")))
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; \d{5}\-\d{3}
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Host\x3A\s+cyber@yahoo\x2Ecom\sWordSpy\-LockedURLBlaze
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "cyber@yahoo.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "WordSpy-LockedURLBlaze\u{a}"))))
(check-sat)

(exit)
