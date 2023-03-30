(declare-const X String)
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in_re X (re.++ (str.to_re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "&cid=/Ui\u{a}"))))
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (not (str.in_re X (str.to_re "CMDLoginExciteSubject:downloadfile.org\u{a}"))))
; /filename=[^\n]*\x2edir/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dir/i\u{a}"))))
(check-sat)

(exit)
