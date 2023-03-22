(declare-const X String)
; /filename=[^\n]*\x2eses/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}")))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (not (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}"))))
(check-sat)
