(declare-const X String)
; \x7D\x7BUser\x3A\x7D\x7BTrojan\x3ASPYSubject\x3A\swww\.fast-finder\.comhostieLogger
(assert (str.in_re X (re.++ (str.to_re "}{User:}{Trojan:SPYSubject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comhostieLogger\u{a}"))))
; ^(\{1}[2-9]{1}[0-9]{2}\){1}[ ]?[2-9]{1}[0-9]{2}(-| )?[0-9]{4}|[2-9]{1}[0-9]{2}[ ]{1}[2-9]{1}[0-9]{2}[ ]{1}[0-9]{4}|[2-9]{1}[0-9]{2}[2-9]{1}[0-9]{6}|[2-9]{1}[0-9]{2}-{1}[2-9]{1}[0-9]{2}-{1}[0-9]{4}){1}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.++ (str.to_re "{1}") ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ")")) (re.opt (str.to_re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re "\u{a}"))))
; /\x2em4v([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (str.in_re X (str.to_re "findX-Mailer:\u{13}User-Agent:www.take5bingo.com\u{1b}X-Mailer:\u{13}\u{4}\u{0}\u{a}")))
; /filename=[^\n]*\x2eemf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".emf/i\u{a}")))))
(check-sat)

(exit)
