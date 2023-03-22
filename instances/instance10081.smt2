(declare-const X String)
; as\x2Estarware\x2Ecom.*Casino.*LOG.*FilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (not (str.in_re X (re.++ (str.to_re "as.starware.com") (re.* re.allchar) (str.to_re "Casino") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "FilteredHost:e2give.com/newsurfer4/\u{a}")))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}")))
; (^([\w]+[^\W])([^\W]\.?)([\w]+[^\W]$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
; /filename\=\d+\.swf/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "0" "9")) (str.to_re ".swf/H\u{a}"))))
(check-sat)
