(declare-const X String)
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}"))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (not (str.in_re X (str.to_re "WinCrashcomHost:tid=%toolbar_id4.8.4\u{a}"))))
(check-sat)
