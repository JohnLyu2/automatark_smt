(declare-const X String)
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:namediepluginHost:X-Mailer:\u{13}\u{a}")))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/") (re.* re.allchar) (str.to_re "loomcompany.com\u{a}"))))
; (CZ-?)?[0-9]{8,10}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "CZ") (re.opt (str.to_re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to_re "\u{a}"))))
; log\=\x7BIP\x3A\s+Pcast\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecnRXnewads1\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "log={IP:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cnRXnewads1.com\u{a}"))))
; /filename=[^\n]*\x2em4r/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4r/i\u{a}")))))
(check-sat)
