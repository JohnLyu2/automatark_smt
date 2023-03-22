(declare-const X String)
; A-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecomWindowswww\.trackhits\.ccHost\x3a
(assert (not (str.in_re X (str.to_re "A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}Windowswww.trackhits.ccHost:\u{a}"))))
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}")))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}"))))
(check-sat)
