(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}"))))
; /nim:import\?[^\x22\x27>\s]*?filename=[^\x22\x27>\s]{485}/i
(assert (not (str.in_re X (re.++ (str.to_re "/nim:import?") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "filename=") ((_ re.loop 485 485) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/i\u{a}")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in_re X (str.to_re "www.123mania.com/0409areZC-Bridge\u{a}")))
(check-sat)
