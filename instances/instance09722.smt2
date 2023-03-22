(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (str.in_re X (str.to_re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\u{13}\u{a}")))
; /filename=[^\n]*\x2eoga/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".oga/i\u{a}")))))
; ([\r\n ]*//[^\r\n]*)+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " "))) (str.to_re "//") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))))) (str.to_re "\u{a}")))))
(check-sat)
