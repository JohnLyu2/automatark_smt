(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}")))))
; /filename=[^\n]*\x2exlw/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xlw/i\u{a}")))))
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (not (str.in_re X (str.to_re "Activityfilename=\u{22}StarLoggerDAWeb-Mail\u{a}"))))
(check-sat)

(exit)
