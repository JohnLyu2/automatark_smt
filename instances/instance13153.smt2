(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}"))))
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (not (str.in_re X (re.++ (str.to_re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
