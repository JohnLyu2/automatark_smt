(declare-const X String)
; ^(([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n)+([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n?$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re "\u{a}"))) (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (re.opt (str.to_re "\u{a}")) (str.to_re "\u{a}")))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{a}"))))
(check-sat)
