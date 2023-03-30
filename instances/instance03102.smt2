(declare-const X String)
; to=\x2Fezsb\s\x3Ahirmvtg\x2fggqh\.kqhSPYzzzvmkituktgr\x2fetie
(assert (not (str.in_re X (re.++ (str.to_re "to=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":hirmvtg/ggqh.kqh\u{1b}SPYzzzvmkituktgr/etie\u{a}")))))
(check-sat)

(exit)
