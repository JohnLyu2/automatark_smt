(declare-const X String)
; /filename=[^\n]*\x2epor/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".por/i\u{a}")))))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}")))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (not (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}"))))
(check-sat)
