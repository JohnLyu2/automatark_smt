(declare-const X String)
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in_re X (str.to_re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\u{a}")))
; /filename=[^\n]*\x2ertx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rtx/i\u{a}")))))
; www\x2eproventactics\x2ecom\s+
(assert (str.in_re X (re.++ (str.to_re "www.proventactics.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)
