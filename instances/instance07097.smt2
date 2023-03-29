(declare-const X String)
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirect") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServer\u{a}"))))
; tid\x3D\x7B\s+Basic.*\x2Ftoolbar\x2F
(assert (str.in_re X (re.++ (str.to_re "tid={") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "/toolbar/\u{a}"))))
; ^([a-z|A-Z]{1}[0-9]{3})[-]([0-9]{3})[-]([0-9]{2})[-]([0-9]{3})[-]([0-9]{1})
(assert (str.in_re X (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (re.range "a" "z") (str.to_re "|") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.range "0" "9")))))
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hdPASSW=
(assert (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}"))))
(check-sat)

(exit)
