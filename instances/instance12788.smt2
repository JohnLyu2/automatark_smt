(declare-const X String)
; \x2Fnewsurfer4\x2FOK\r\nencodertvlistingsTM_SEARCH3
(assert (not (str.in_re X (str.to_re "/newsurfer4/OK\u{d}\u{a}encodertvlistingsTM_SEARCH3\u{a}"))))
; ^(9,)*([1-9]\d{2}-?)*[1-9]\d{2}-?\d{4}$
(assert (str.in_re X (re.++ (re.* (str.to_re "9,")) (re.* (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")))) (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/setInterval") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ".focus()/smi\u{a}")))))
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "TT-Bot/mi\u{a}"))))
; /filename=[\x22\x27]?[^\n]*\x2emotn[\x22\x27\s]/si
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".motn") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}"))))
(check-sat)
