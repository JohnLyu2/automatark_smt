(declare-const X String)
; aresflashdownloader\x2Ecom%3fccecaedbebfcaf\x2Ecom\stoolbar\.anwb\.nl
(assert (str.in_re X (re.++ (str.to_re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl\u{a}"))))
; ToolBar\s+HWAEUser-Agent\x3ATheef2-\>M\x2Ezipbar\-navig\x2Eyandex\x2Eru
(assert (str.in_re X (re.++ (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\u{a}"))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolbarScanerX-Mailer:\u{13}Information\u{a}")))))
(check-sat)
