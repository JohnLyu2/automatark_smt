(declare-const X String)
; Host\x3AHost\x3AUser-Agent\x3AServerad\x2Emokead\x2Ecom
(assert (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}")))
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in_re X (re.++ (str.to_re "Version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}"))))
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}")))))
(check-sat)

(exit)
