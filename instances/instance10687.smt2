(declare-const X String)
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{a}")))))
; Host\x3AAttachedengineact=Download
(assert (not (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}"))))
(check-sat)
