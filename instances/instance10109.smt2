(declare-const X String)
; /\x2epct([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pct") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownload") (re.* re.allchar) (str.to_re "Referer:GREATDripline\u{a}")))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{a}")))))
; Logger.*Host\x3A.*\x2Fcommunicatortb\x7croogoo\x7c
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/communicatortb|roogoo|\u{a}"))))
; /filename=[^\n]*\x2emov/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mov/i\u{a}")))))
(check-sat)
