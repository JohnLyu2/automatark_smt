(declare-const X String)
; /STOR\x20PIC\x5f\d{6}[a-z]{2}\x5f\x20\x5f\d{7}\x20\x2e\d{3}/i
(assert (str.in_re X (re.++ (str.to_re "/STOR PIC_") ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "_ _") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re " .") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/i\u{a}"))))
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "DmInf^\u{d}\u{a}\u{d}\u{a}Attached/bar_pl/chk.fcgi\u{a}")))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}"))))
; ^\d+(\.\d{2})?$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "hotbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthftpquickbruteUser-Agent:\u{a}")))))
(check-sat)
