(declare-const X String)
; ^(http(s)?\:\/\/\S+)\s
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}http") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}")))))
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\u{a}")))
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
