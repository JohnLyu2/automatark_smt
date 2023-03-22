(declare-const X String)
; /filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pi
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "&"))) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "%2e"))) (re.union (str.to_re "%2f") (str.to_re "%5c") (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/Pi\u{a}")))))
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}")))))
(check-sat)
