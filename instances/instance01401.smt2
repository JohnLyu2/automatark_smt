(declare-const X String)
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (str.to_re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\u{a}"))))
(check-sat)
