(declare-const X String)
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in_re X (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}")))
; /^\/\d\x2eexe/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.range "0" "9") (str.to_re ".exe/Ui\u{a}")))))
(check-sat)

(exit)
