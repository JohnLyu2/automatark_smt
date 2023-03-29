(declare-const X String)
; <img([^>]*[^/])>
(assert (not (str.in_re X (re.++ (str.to_re "<img>\u{a}") (re.* (re.comp (str.to_re ">"))) (re.comp (str.to_re "/"))))))
; Password="(\{.+\}[0-9a-zA-Z]+[=]*|[0-9a-zA-Z]+)"
(assert (str.in_re X (re.++ (str.to_re "Password=\u{22}") (re.union (re.++ (str.to_re "{") (re.+ re.allchar) (str.to_re "}") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (str.to_re "="))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "\u{22}\u{a}"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "UI2") (re.* re.allchar) (str.to_re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\u{a}")))))
; ^(\{|\[|\().+(\}|\]|\)).+$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "{") (str.to_re "[") (str.to_re "(")) (re.+ re.allchar) (re.union (str.to_re "}") (str.to_re "]") (str.to_re ")")) (re.+ re.allchar) (str.to_re "\u{a}")))))
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}")))))
(check-sat)

(exit)
