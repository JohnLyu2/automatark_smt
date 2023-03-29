(declare-const X String)
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}")))))
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (not (str.in_re X (re.++ (str.to_re "/Content-Disposition: inline;") (re.union (str.to_re "\u{d}") (str.to_re "\u{a}")) (str.to_re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".pdf\u{d}\u{a}/Hm\u{a}")))))
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "httpUser-Agent:\u{a}"))))
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.opt (str.to_re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "/") (re.opt (str.to_re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to_re ";") (str.to_re ",") (re.range "0" "9") (str.to_re "+"))) (str.to_re "/U\u{a}")))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\u{a}"))))
(check-sat)

(exit)
