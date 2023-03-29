(declare-const X String)
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (not (str.in_re X (re.union (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "!") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "}") (str.to_re "]") (str.to_re "[") (str.to_re "{") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re ",") (str.to_re ".") (str.to_re ">") (str.to_re "<") (str.to_re "*") (re.range "0" "9") (str.to_re "(") (str.to_re ")") (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")) (re.range "A" "Z") (re.range "a" "z")))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (not (str.in_re X (str.to_re "findX-Mailer:\u{13}User-Agent:www.take5bingo.com\u{1b}X-Mailer:\u{13}\u{4}\u{0}\u{a}"))))
; MyBrowserSbAtsHost\x3A
(assert (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}")))
; /filename=[^\n]*\x2etar/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tar/i\u{a}"))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (str.in_re X (re.++ (str.to_re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}"))))
(check-sat)

(exit)
