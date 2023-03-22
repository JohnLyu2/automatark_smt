(declare-const X String)
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (not (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "My") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}TheZC-BridgeUser-Agent:serverUSER-Attached\u{a}")))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (str.in_re X (re.++ (str.to_re "www.maxifiles.com") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}")))
; frame_ver2www\.raxsearch\.comaboutGoogleyxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (str.to_re "frame_ver2www.raxsearch.comaboutGoogleyxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{a}"))))
; ^(\d{2,3}|\(\d{2,3}\))[ ]?\d{3,4}[-]?\d{3,4}$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to_re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")"))) (re.opt (str.to_re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
