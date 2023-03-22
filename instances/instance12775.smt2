(declare-const X String)
; ^([0-9]*\-?\ ?\/?[0-9]*)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.opt (str.to_re "-")) (re.opt (str.to_re " ")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}"))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to_re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "+"))) (str.to_re "=/I\u{a}"))))
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (str.in_re X (re.++ (str.to_re "sPatternTablet = '/") (re.union (str.to_re "Tablet") (str.to_re "iPad") (str.to_re "iPod")) (str.to_re "/';\u{a}"))))
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in_re X (str.to_re "Server.exeHWPEServer:Host:\u{a}"))))
(check-sat)
