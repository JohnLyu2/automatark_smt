(declare-const X String)
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}"))))
(check-sat)

(exit)
