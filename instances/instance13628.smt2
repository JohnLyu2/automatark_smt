(declare-const X String)
; /filename=[^\n]*\x2exfdl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xfdl/i\u{a}"))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (str.in_re X (re.++ (str.to_re "www.maxifiles.com") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.com\u{a}"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re "$") (str.to_re "%") (str.to_re "'") (str.to_re "-") (str.to_re "@") (str.to_re "{") (str.to_re "}") (str.to_re "~") (str.to_re "!") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "&") (str.to_re "^")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
