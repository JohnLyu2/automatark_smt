(declare-const X String)
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (str.in_re X (str.to_re "Agentppcdomain.co.ukWordSpy-Locked\u{a}")))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (not (str.in_re X (re.++ (str.to_re "p") (re.opt (str.to_re "ost")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (str.to_re "o") (re.opt (str.to_re "ffice")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (re.opt (str.to_re "box")) (re.* (re.union (str.to_re " ") (re.range "0" "9"))) (re.union (str.to_re "[") (re.range "a" "z") (str.to_re " ")) (re.* (str.to_re "]")) (str.to_re "\u{a}")))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{a}"))))
; /(\x17\x00|\x00\x5C)\x00e\x00l\x00s\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{17}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}e\u{0}l\u{0}s\u{0}e\u{0}x\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
(check-sat)

(exit)
