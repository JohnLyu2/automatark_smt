(declare-const X String)
; User-Agent\x3Awww\x2Emyarmory\x2EcomHost\x3AUser-Agent\x3aHost\x3AportAuthorization\x3a\x2Fnewsurfer4\x2F
(assert (str.in_re X (str.to_re "User-Agent:www.myarmory.comHost:User-Agent:Host:portAuthorization:/newsurfer4/\u{a}")))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}") (re.opt (str.to_re "$")) ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)

(exit)
