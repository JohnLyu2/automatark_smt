(declare-const X String)
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (not (str.in_re X (re.++ (str.to_re "/domain=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "$(") (str.to_re "%3b") (str.to_re "%60") (str.to_re "%24%28") (str.to_re ";") (str.to_re "`")) (str.to_re "/Pi\u{a}")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (str.in_re X (str.to_re "User-Agent:Host:Host:SpyBuddy\u{a}")))
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (str.in_re X (re.++ (str.to_re "<select") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "selected") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* re.allchar) (str.to_re "</option>") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</select>\u{a}"))))
(check-sat)
