(declare-const X String)
; /filename=[^\n]*\x2epfa/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}"))))
; /filename=[^\n]*\x2eses/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}")))))
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.paq8o") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^([\#]{0,1}([a-fA-F0-9]{6}|[a-fA-F0-9]{3})|rgb\(([0-9]{1},|[1-9]{1}[0-9]{1},|[1]{1}[0-9]{2},|[2]{1}[0-4]{1}[0-9]{1},|25[0-5]{1},){2}([0-9]{1}|[1-9]{1}[0-9]{1}|[1]{1}[0-9]{2}|[2]{1}[0-4]{1}[0-9]{1}|25[0-5]{1}){1}\)|rgb\(([0-9]{1}%,|[1-9]{1}[0-9]{1}%,|100%,){2}([0-9]{1}%|[1-9]{1}[0-9]{1}%|100%){1}\))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "#")) (re.union ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))))) (re.++ (str.to_re "rgb(") ((_ re.loop 2 2) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5")) (str.to_re ",")))) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5"))))) (str.to_re ")")) (re.++ (str.to_re "rgb(") ((_ re.loop 2 2) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%,")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%,")) (str.to_re "100%,"))) ((_ re.loop 1 1) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (str.to_re "100%"))) (str.to_re ")"))) (str.to_re "\u{a}")))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (not (str.in_re X (re.++ (str.to_re "/&destination_ip=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "`") (str.to_re "$(") (str.to_re "%60") (str.to_re "%24%28")) (str.to_re "/Pmi\u{a}")))))
(check-sat)

(exit)
