(declare-const X String)
; Toolbar\s+wwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwProbnymomspyo/zowy\u{a}")))))
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (str.in_re X (re.++ (str.to_re "/update/barcab/") (re.* re.allchar) (str.to_re "tn=") (re.* re.allchar) (str.to_re "id=") (re.* re.allchar) (str.to_re "version=/smi\u{a}"))))
; /\x2eotf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.otf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownload") (re.* re.allchar) (str.to_re "Referer:GREATDripline\u{a}")))))
; Host\x3A[^\n\r]*Travel[^\n\r]*From\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Travel") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "From:www.ZSearchResults.com\u{13}\u{a}")))))
(check-sat)

(exit)
