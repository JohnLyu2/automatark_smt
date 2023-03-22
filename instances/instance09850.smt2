(declare-const X String)
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}")))
; WindowsAcmeReferer\x3A
(assert (not (str.in_re X (str.to_re "WindowsAcmeReferer:\u{a}"))))
; /\x2etorrent([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.torrent") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
