(declare-const X String)
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}'") (re.* (re.comp (str.to_re "\u{d}"))))))))
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (not (str.in_re X (str.to_re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\u{13}Explorer\u{a}"))))
(check-sat)

(exit)
