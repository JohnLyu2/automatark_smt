(declare-const X String)
; ^[a-zA-Z]{4}\d{6}[a-zA-Z]{6}\d{2}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; <[aA][ ]{0,}([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,}>((<(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})>([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})){0,}
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "a") (str.to_re "A")) (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))) (str.to_re ">") (re.* (re.union (re.++ (str.to_re "<") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))) (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{9}") (str.to_re "\u{c}"))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
