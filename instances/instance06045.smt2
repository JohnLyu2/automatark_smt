(declare-const X String)
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Xtra") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Referer:ThisSubject:\u{a}")))))
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "from:Host:www.thecommunicator.net\u{a}"))))
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))) (re.+ (re.++ (re.+ (str.to_re "<")) (re.+ (re.union (str.to_re "<") (str.to_re ">"))) (re.* (str.to_re ">")))) (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))))) (str.to_re "\u{a}")))))
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (str.in_re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ecy3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cy3/i\u{a}")))))
(check-sat)

(exit)
