(declare-const X String)
; /PRIVMSG #new :\x02\x5b(GOOGLE|SCAN)\x5d\x02\x20Scanning/
(assert (str.in_re X (re.++ (str.to_re "/PRIVMSG #new :\u{2}[") (re.union (str.to_re "GOOGLE") (str.to_re "SCAN")) (str.to_re "]\u{2} Scanning/\u{a}"))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}"))))
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".php?php=receipt/Ui\u{a}")))))
; /^\/cnt\.php\?id=\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//cnt.php?id=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
