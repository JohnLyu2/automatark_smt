(declare-const X String)
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hpj/i\u{a}")))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
; requested\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (not (str.in_re X (re.++ (str.to_re "requested") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Reports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HostHost:Host:Host:MyWebSearchSearchAssistant\u{a}")))))
; (mailto\:|(news|(ht|f)tp(s?))\://)(([^[:space:]]+)|([^[:space:]]+)( #([^#]+)#)?)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.union (re.++ (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]"))) (re.++ (re.opt (re.++ (str.to_re " #") (re.+ (re.comp (str.to_re "#"))) (str.to_re "#"))) (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]")))) (str.to_re "\u{a}")))))
; ^((\(([1-9]{2})\))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4})|(([1-9]{2}))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re ")")) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
