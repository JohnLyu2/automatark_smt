(declare-const X String)
; ^[^\x00-\x1f\x21-\x26\x28-\x2d\x2f-\x40\x5b-\x60\x7b-\xff]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "\u{0}" "\u{1f}") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\u{ff}"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (str.in_re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /<[A-Z]+\s+[^>]*?padding-left\x3A\x2D1000px\x3B[^>]*text-indent\x3A\x2D1000px/smi
(assert (str.in_re X (re.++ (str.to_re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (str.to_re "padding-left:-1000px;") (re.* (re.comp (str.to_re ">"))) (str.to_re "text-indent:-1000px/smi\u{a}"))))
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
(check-sat)

(exit)
