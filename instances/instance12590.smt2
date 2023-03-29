(declare-const X String)
; /filename=[^\n]*\x2ehtc/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".htc/i\u{a}")))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}")))
; Host\x3ASpyxpsp2-Host\x3aHost\x3Awjpropqmlpohj\x2floregister\.asp
(assert (str.in_re X (str.to_re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\u{a}")))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
(check-sat)

(exit)
