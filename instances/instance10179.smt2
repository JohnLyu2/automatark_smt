(declare-const X String)
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (not (str.in_re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to_re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}"))))
; [^!~/><\|/#%():;{}`_-]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "/") (str.to_re ">") (str.to_re "<") (str.to_re "|") (str.to_re "#") (str.to_re "%") (str.to_re "(") (str.to_re ")") (str.to_re ":") (str.to_re ";") (str.to_re "{") (str.to_re "}") (str.to_re "`") (str.to_re "_") (str.to_re "-")) (str.to_re "\u{a}")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.manifest") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
