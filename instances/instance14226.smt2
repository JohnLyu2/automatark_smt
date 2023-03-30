(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (not (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}"))))
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}")))
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}")))))
(check-sat)

(exit)
