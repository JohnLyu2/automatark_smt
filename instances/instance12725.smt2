(declare-const X String)
; devSoft\x27s\s+Host\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "devSoft's\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}")))))
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "news") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Peerwww.locators.com\u{a}")))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}")))))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (str.in_re X (re.union (re.++ (str.to_re "protected") (re.* re.allchar) (str.to_re "public")) (re.++ (str.to_re "private") (re.* re.allchar) (str.to_re "protected")) (re.++ (str.to_re "\u{a}private") (re.* re.allchar) (str.to_re "public")))))
(check-sat)

(exit)
