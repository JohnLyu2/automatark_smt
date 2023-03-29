(declare-const X String)
; /filename=[^\n]*\x2efon/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fon/i\u{a}"))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in_re X (re.++ (str.to_re "/mmlocate") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
; <([^<>\s]*)(\s[^<>]*)?>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re "<") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* (re.union (str.to_re "<") (str.to_re ">"))))) (str.to_re ">\u{a}")))))
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (not (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}"))))
; /filename=[^\n]*\x2emim/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}"))))
(check-sat)

(exit)
