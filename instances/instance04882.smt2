(declare-const X String)
; ^(([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n)+([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n?$
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re "\u{a}"))) (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (str.to_re ",") (re.+ (re.comp (str.to_re "@"))) (str.to_re "@") (re.+ (re.comp (str.to_re "."))) (str.to_re ".") (re.+ (re.union (str.to_re ",") (str.to_re "\u{a}"))) (re.opt (str.to_re "\u{a}")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
