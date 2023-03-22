(declare-const X String)
; /^User\x2DAgent\x3A\s+Ryeol\s+HTTP\s+Client\s+Class/smiH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Ryeol") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HTTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Class/smiH\u{a}"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
; /\/\*[\d\D]*?\*\//
(assert (str.in_re X (re.++ (str.to_re "//*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to_re "*//\u{a}"))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to_re "exe/Ui\u{a}")))))
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{a}")))
(check-sat)
