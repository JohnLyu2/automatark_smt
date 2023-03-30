(declare-const X String)
; Host\x3A\s+Server\x00User-Agent\x3atoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server\u{0}User-Agent:toolsbar.kuaiso.com\u{a}")))))
; e(vi?)?
(assert (str.in_re X (re.++ (str.to_re "e") (re.opt (re.++ (str.to_re "v") (re.opt (str.to_re "i")))) (str.to_re "\u{a}"))))
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}")))
(check-sat)

(exit)
