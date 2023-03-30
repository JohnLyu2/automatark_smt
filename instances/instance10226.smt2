(declare-const X String)
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}"))))
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (str.in_re X (str.to_re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\u{a}")))
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
; /\x2ewmx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.comdesksearch.dropspam.com\u{a}"))))
(check-sat)

(exit)
