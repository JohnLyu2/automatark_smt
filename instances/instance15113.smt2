(declare-const X String)
; ^[^']*?\<\s*Assembly\s*:\s*AssemblyVersion\s*\(\s*"(\*|[0-9]+.\*|[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.[0-9]+)"\s*\)\s*\>.*$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Assembly") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AssemblyVersion") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.union (str.to_re "*") (re.++ (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")))) (str.to_re "\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">") (re.* re.allchar) (str.to_re "\u{a}"))))
; linkautomatici\x2EcomAID\x2FYourUser-Agent\x3AtoBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in_re X (str.to_re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\u{a}")))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
(check-sat)

(exit)
