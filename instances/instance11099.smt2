(declare-const X String)
; /\x2ehta([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.hta") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; qr/(Alabama|Alaska|Arizona|Arkansas|California|Colorado|Connecticut|Delaware|Florida|Georgia|Hawaii|Idaho|Illinois|Indiana|Iowa|Kansas|Kentucky|Louisiana|Maine|Maryland|Massachusetts|Michigan|Minnesota|Mississippi|Missouri|Montana|Nebraska|Nevada|New\sHampshire|New\sJersey|New\sMexico|New\sYork|North\sCarolina|North\sDakota|Ohio|Oklahoma|Oregon|Pennsylvania|Rhode\sIsland|South\sCarolina|South\sDakota|Tennessee|Texas|Utah|Vermont|Virginia|Washington|West\sVirginia|Wisconsin|Wyoming)/
(assert (not (str.in_re X (re.++ (str.to_re "qr/") (re.union (str.to_re "Alabama") (str.to_re "Alaska") (str.to_re "Arizona") (str.to_re "Arkansas") (str.to_re "California") (str.to_re "Colorado") (str.to_re "Connecticut") (str.to_re "Delaware") (str.to_re "Florida") (str.to_re "Georgia") (str.to_re "Hawaii") (str.to_re "Idaho") (str.to_re "Illinois") (str.to_re "Indiana") (str.to_re "Iowa") (str.to_re "Kansas") (str.to_re "Kentucky") (str.to_re "Louisiana") (str.to_re "Maine") (str.to_re "Maryland") (str.to_re "Massachusetts") (str.to_re "Michigan") (str.to_re "Minnesota") (str.to_re "Mississippi") (str.to_re "Missouri") (str.to_re "Montana") (str.to_re "Nebraska") (str.to_re "Nevada") (re.++ (str.to_re "New") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Hampshire")) (re.++ (str.to_re "New") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Jersey")) (re.++ (str.to_re "New") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Mexico")) (re.++ (str.to_re "New") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "York")) (re.++ (str.to_re "North") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Carolina")) (re.++ (str.to_re "North") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Dakota")) (str.to_re "Ohio") (str.to_re "Oklahoma") (str.to_re "Oregon") (str.to_re "Pennsylvania") (re.++ (str.to_re "Rhode") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Island")) (re.++ (str.to_re "South") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Carolina")) (re.++ (str.to_re "South") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Dakota")) (str.to_re "Tennessee") (str.to_re "Texas") (str.to_re "Utah") (str.to_re "Vermont") (str.to_re "Virginia") (str.to_re "Washington") (re.++ (str.to_re "West") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Virginia")) (str.to_re "Wisconsin") (str.to_re "Wyoming")) (str.to_re "/\u{a}")))))
; ^(\d?)*\.?(\d{1}|\d{2})?$
(assert (not (str.in_re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (str.to_re ".")) (re.opt (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
