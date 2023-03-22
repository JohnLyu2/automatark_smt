(declare-const X String)
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}"))))
; /\/bin\.exe$/U
(assert (not (str.in_re X (str.to_re "//bin.exe/U\u{a}"))))
(check-sat)
