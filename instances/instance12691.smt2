(declare-const X String)
; ^([0-7]{3})$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "7")) (str.to_re "\u{a}")))))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}")))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (not (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}")))))
(check-sat)

(exit)
