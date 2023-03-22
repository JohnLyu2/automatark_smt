(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "started.") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV\u{a}"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:cdpnode=FILESIZE>\u{13}toolsbar.kuaiso.com\u{a}")))))
; ^\d*\.?(((5)|(0)|))?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "5") (str.to_re "0"))) (str.to_re "\u{a}")))))
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in_re X (re.++ (str.to_re "/obj\u{a}") (re.* (str.to_re " ")) (str.to_re "/Pattern") (re.* (str.to_re " ")) (str.to_re "\u{a}endobj/i\u{a}")))))
(check-sat)
