(declare-const X String)
; ([1,2].)(\d{2}.)(\d{2}.)(\d{2}.)(\d{3}.)(\d{3}.)(\d{2})
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}") (re.union (str.to_re "1") (str.to_re ",") (str.to_re "2")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/setInterval") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ")"))) (str.to_re ".focus()/smi\u{a}")))))
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (str.in_re X (str.to_re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\u{13}Explorer\u{a}")))
(check-sat)

(exit)
