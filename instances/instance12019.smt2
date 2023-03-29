(declare-const X String)
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "data.warezclient.comHost:User-Agent:\u{a}"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (not (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "9lessons") re.allchar (str.to_re "info/2008/08/most-popular-articles") re.allchar (str.to_re "html\u{a}")))))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}")))
(check-sat)

(exit)
