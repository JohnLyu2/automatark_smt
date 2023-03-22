(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/Ui\u{a}"))))
; \x2Fsearchfast\x2FNavhelper
(assert (str.in_re X (str.to_re "/searchfast/Navhelper\u{a}")))
; ^[^ ,0]*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re ",") (str.to_re "0"))) (str.to_re "\u{a}"))))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (not (str.in_re X (str.to_re "/pagead/ads?waitingisDownload\u{a}"))))
(check-sat)
