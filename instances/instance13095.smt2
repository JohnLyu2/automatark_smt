(declare-const X String)
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (not (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}"))))
; ohgdhkzfhdzo\x2fuwpOK\r\nHost\x3A
(assert (not (str.in_re X (str.to_re "ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:\u{a}"))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "DK") (re.opt (str.to_re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3ASpyxpsp2-Host\x3aHost\x3Awjpropqmlpohj\x2floregister\.asp
(assert (str.in_re X (str.to_re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\u{a}")))
(check-sat)
