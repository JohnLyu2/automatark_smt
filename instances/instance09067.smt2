(declare-const X String)
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}")))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in_re X (re.++ (str.to_re "Days") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (str.in_re X (re.++ (str.to_re "url(") (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (re.+ (re.union (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re ".") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re ")\u{a}"))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}")))))
(check-sat)

(exit)
