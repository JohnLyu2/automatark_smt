(declare-const X String)
; ^((CN=['\w\d\s\-\&]+,)+(OU=['\w\d\s\-\&]+,)*(DC=['\w\d\s\-\&]+[,]*){2,})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.++ (str.to_re "CN=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ","))) (re.* (re.++ (str.to_re "OU=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ","))) ((_ re.loop 2 2) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re ",")))) (re.* (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re ","))))))))
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (not (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:MonitoringGoogle\u{a}")))))
; /filename=[^\n]*\x2ecsv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}"))))
(check-sat)

(exit)
