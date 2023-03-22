(declare-const X String)
; ToolBar\s+HWAEUser-Agent\x3ATheef2-\>M\x2Ezipbar\-navig\x2Eyandex\x2Eru
(assert (not (str.in_re X (re.++ (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\u{a}")))))
(check-sat)
