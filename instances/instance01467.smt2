(declare-const X String)
; Host\x3A\s+Server\x00User-Agent\x3atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server\u{0}User-Agent:toolsbar.kuaiso.com\u{a}"))))
(check-sat)

(exit)
