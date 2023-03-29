(declare-const X String)
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (str.to_re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\u{a}")))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (not (str.in_re X (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\u{a}"))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".aom/i\u{a}")))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (str.in_re X (re.union (re.++ (str.to_re "protected") (re.* re.allchar) (str.to_re "public")) (re.++ (str.to_re "private") (re.* re.allchar) (str.to_re "protected")) (re.++ (str.to_re "\u{a}private") (re.* re.allchar) (str.to_re "public")))))
; /q=[a-f0-9]+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
(check-sat)

(exit)
