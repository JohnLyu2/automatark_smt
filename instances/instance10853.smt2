(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (str.in_re X (str.to_re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\u{1b}\u{a}")))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}"))))
(check-sat)
