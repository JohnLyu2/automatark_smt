(declare-const X String)
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt") (re.range "0" "9") (str.to_re "Subject:HANDY/rssScaner\u{a}")))))
; /\/elections\.php\?([a-z0-9]+\x3d\d{1,3}\&){9}[a-z0-9]+\x3d\d{1,3}$/U
(assert (str.in_re X (re.++ (str.to_re "//elections.php?") ((_ re.loop 9 9) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "&"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; \d+([\.|\,][0]+?[1-9]+)?
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re "|") (str.to_re ",")) (re.+ (str.to_re "0")) (re.+ (re.range "1" "9")))) (str.to_re "\u{a}")))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (not (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}"))))
(check-sat)

(exit)
