(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in_re X (str.to_re "User-Agent:Host:\u{22}The\u{a}")))
; Center\w+Host\x3aiz=iMeshBar
(assert (str.in_re X (re.++ (str.to_re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar\u{a}"))))
(check-sat)
