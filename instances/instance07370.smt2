(declare-const X String)
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (not (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}")))))
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}")))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)
