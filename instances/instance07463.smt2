(declare-const X String)
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (not (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))
; ^\.{1}
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re ".")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
