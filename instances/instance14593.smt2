(declare-const X String)
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\x22\x27]*[\d\x2D]*[^\s\x22\x27\d\x2d]/smi
(assert (not (str.in_re X (re.++ (str.to_re "/xsl:template") (re.* (re.comp (str.to_re ">"))) (str.to_re "priority") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/smi\u{a}")))))
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (not (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "My") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}TheZC-BridgeUser-Agent:serverUSER-Attached\u{a}")))))
; /filename=[^\n]*\x2ewvx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wvx/i\u{a}"))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}"))))
; /^\/\d+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)

(exit)
