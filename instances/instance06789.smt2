(declare-const X String)
; <[aA][ ]{0,}([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,}>((<(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})>([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})){0,}
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "a") (str.to_re "A")) (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))) (str.to_re ">") (re.* (re.union (re.++ (str.to_re "<") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))) (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))))) (str.to_re "\u{a}")))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (str.in_re X (re.++ (str.to_re "/\u{0}hide hide\u{22}\u{9}\u{22}") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "\u{5c}") (str.to_re ".") (str.to_re ":"))) (str.to_re ".exe")) (str.to_re "sh")) (str.to_re "/\u{a}"))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}")))))
; ^((0[123456789]|1[0-2])(0[1-3]|1[0-9]|2[0-9]))|((0[13456789]|1[0-2])(30))|((0[13578]|1[02])(31))$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.++ (str.to_re "0") (re.range "1" "3")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "30")) (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "31"))))))
(check-sat)
