(declare-const X String)
; (")([0-9]*)(",")([0-9]*)("\))
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22},\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22})\u{a}"))))
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{a}"))))
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (not (str.in_re X (re.++ (str.to_re "/.appendChild") (re.* re.allchar) (str.to_re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to_re "offset") (str.to_re "client")) (re.union (str.to_re "Height") (str.to_re "Left") (str.to_re "Parent") (str.to_re "Top") (str.to_re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to_re "offset") (str.to_re "client")) (re.union (str.to_re "Height") (str.to_re "Left") (str.to_re "Parent") (str.to_re "Top") (str.to_re "Width")) (str.to_re "/is\u{a}")))))
(check-sat)

(exit)
