(declare-const X String)
; /rec\.php$/Usmi
(assert (str.in_re X (str.to_re "/rec.php/Usmi\u{a}")))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (not (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}"))))
; Wareztv\x2Eseekmo\x2Ecom\sKeyloggingTRUSTYFILES\x2ECOM
(assert (str.in_re X (re.++ (str.to_re "Wareztv.seekmo.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Keylogging\u{13}TRUSTYFILES.COM\u{a}"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "  ") (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}") (re.range "1" "9") (re.+ (re.range "0" "9")))))))
; adserver\.warezclient\.com530Host\x3A
(assert (not (str.in_re X (str.to_re "adserver.warezclient.com530Host:\u{a}"))))
(check-sat)

(exit)
