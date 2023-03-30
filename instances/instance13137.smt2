(declare-const X String)
; ^([0-9]{1}[\d]{0,2}(\,[\d]{3})*(\,[\d]{0,2})?|[0-9]{1}[\d]{0,}(\,[\d]{0,2})?|0(\,[\d]{0,2})?|(\,[\d]{1,2})?)$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /\x2elnk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.lnk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}")))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}")))
; body=wordHost\x3ASpediartaddrEverywareHost\x3AHost\x3A
(assert (str.in_re X (str.to_re "body=wordHost:SpediartaddrEverywareHost:Host:\u{a}")))
(check-sat)

(exit)
