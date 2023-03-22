(declare-const X String)
; http[s]?://(www.facebook|[a-zA-Z]{2}-[a-zA-Z]{2}.facebook|facebook)\.com/(events/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.union (re.++ (str.to_re "www") re.allchar (str.to_re "facebook")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) re.allchar (str.to_re "facebook")) (str.to_re "facebook")) (str.to_re ".com/") (re.union (re.++ (str.to_re "events/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-")))) (re.opt (str.to_re "/")) (str.to_re "\u{a}"))))
; ^(\-)?\d*(\.\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}")))))
; A-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecomWindowswww\.trackhits\.ccHost\x3a
(assert (not (str.in_re X (str.to_re "A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}Windowswww.trackhits.ccHost:\u{a}"))))
(check-sat)
