(declare-const X String)
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
; ^(([A-Z]{1}[a-z]+([\-][A-Z]{1}[a-z]+)?)([ ]([A-Z]\.)){0,2}[ ](([A-Z]{1}[a-z]*)|([O]{1}[\']{1}[A-Z][a-z]{2,}))([ ](Jr\.|Sr\.|IV|III|II))?)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 0 2) (re.++ (str.to_re " ") (re.range "A" "Z") (str.to_re "."))) (str.to_re " ") (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to_re "O")) ((_ re.loop 1 1) (str.to_re "'")) (re.range "A" "Z") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))) (re.opt (re.++ (str.to_re " ") (re.union (str.to_re "Jr.") (str.to_re "Sr.") (str.to_re "IV") (str.to_re "III") (str.to_re "II")))) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))))))))
; ((http|ftp|https):\/\/w{3}[\d]*.|(http|ftp|https):\/\/|w{3}[\d]*.)([\w\d\._\-#\(\)\[\]\\,;:]+@[\w\d\._\-#\(\)\[\]\\,;:])?([a-z0-9]+.)*[a-z\-0-9]+.([a-z]{2,3})?[a-z]{2,6}(:[0-9]+)?(\/[\/a-z0-9\._\-,]+)*[a-z0-9\-_\.\s\%]+(\?[a-z0-9=%&\.\-,#]+)?
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://") ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar) (re.++ (re.union (str.to_re "http") (str.to_re "ftp") (str.to_re "https")) (str.to_re "://")) (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.* (re.range "0" "9")) re.allchar)) (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re ";") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) re.allchar)) (re.+ (re.union (re.range "a" "z") (str.to_re "-") (re.range "0" "9"))) re.allchar (re.opt ((_ re.loop 2 3) (re.range "a" "z"))) ((_ re.loop 2 6) (re.range "a" "z")) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "-") (str.to_re ","))))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re "%") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "%") (str.to_re "&") (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re "#"))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}")))))
; Logger.*aresflashdownloader\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "aresflashdownloader.com\u{a}"))))
(check-sat)

(exit)
