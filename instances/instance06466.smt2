(declare-const X String)
; /filename=[^\n]*\x2eram/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ram/i\u{a}")))))
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}")))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}") (re.opt (re.union (str.to_re "+") (str.to_re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to_re ")")))))
; ToolBar\s+HWAEUser-Agent\x3ATheef2-\>M\x2Ezipbar\-navig\x2Eyandex\x2Eru
(assert (not (str.in_re X (re.++ (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\u{a}")))))
(check-sat)

(exit)
