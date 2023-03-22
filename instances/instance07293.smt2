(declare-const X String)
; ^[a-zA-Z]{1}[-][0-9]{7}[-][a-zA-Z]{1}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\u{a}"))))
; /\.php\?mac\x3d([a-f0-9]{2}\x3a){5}[a-f0-9]{2}$/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?mac=") ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; /filename=[^\n]*\x2exslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (not (str.in_re X (str.to_re "DownloadDmInf^infoSimpsonUser-Agent:Client\u{a}"))))
(check-sat)
