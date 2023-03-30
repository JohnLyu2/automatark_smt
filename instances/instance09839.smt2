(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}"))))
; 3A\s+URLBlazeHost\x3Atrackhjhgquqssq\x2fpjm
(assert (not (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlazeHost:trackhjhgquqssq/pjm\u{a}")))))
; Filtered\s+Yeah\!\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2EcomUser-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in_re X (re.++ (str.to_re "Filtered") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.bizUser-Agent:www.ezula.comUser-Agent:etbuviaebe/eqv.bvv\u{a}")))))
(check-sat)

(exit)
