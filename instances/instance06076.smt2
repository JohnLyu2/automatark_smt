(declare-const X String)
; /\x2egif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.gif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; </?(a|abbr|acronym|address|applet|area|b|base|basefont|bdo|big|blockquote|body|br|button|caption|center|cite|code|col|colgroup|dd|del|dir|div|dfn|dl|dt|em|fieldset|font|form|frame|frameset|h[1-6]|head|hr|html|i|iframe|img|input|ins|isindex|kbd|label|legend|li|link|map|menu|meta|noframes|noscript|object|ol|optgroup|option|p|param|pre|q|s|samp|script|select|small|span|strike|strong|style|sub|sup|table|tbody|td|textarea|tfoot|th|thead|title|tr|tt|u|ul|var|xmp)\b((\"[^\"]*\"|\'[^\']*\')*|[^\"\'>])*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.union (str.to_re "a") (str.to_re "abbr") (str.to_re "acronym") (str.to_re "address") (str.to_re "applet") (str.to_re "area") (str.to_re "b") (str.to_re "base") (str.to_re "basefont") (str.to_re "bdo") (str.to_re "big") (str.to_re "blockquote") (str.to_re "body") (str.to_re "br") (str.to_re "button") (str.to_re "caption") (str.to_re "center") (str.to_re "cite") (str.to_re "code") (str.to_re "col") (str.to_re "colgroup") (str.to_re "dd") (str.to_re "del") (str.to_re "dir") (str.to_re "div") (str.to_re "dfn") (str.to_re "dl") (str.to_re "dt") (str.to_re "em") (str.to_re "fieldset") (str.to_re "font") (str.to_re "form") (str.to_re "frame") (str.to_re "frameset") (re.++ (str.to_re "h") (re.range "1" "6")) (str.to_re "head") (str.to_re "hr") (str.to_re "html") (str.to_re "i") (str.to_re "iframe") (str.to_re "img") (str.to_re "input") (str.to_re "ins") (str.to_re "isindex") (str.to_re "kbd") (str.to_re "label") (str.to_re "legend") (str.to_re "li") (str.to_re "link") (str.to_re "map") (str.to_re "menu") (str.to_re "meta") (str.to_re "noframes") (str.to_re "noscript") (str.to_re "object") (str.to_re "ol") (str.to_re "optgroup") (str.to_re "option") (str.to_re "p") (str.to_re "param") (str.to_re "pre") (str.to_re "q") (str.to_re "s") (str.to_re "samp") (str.to_re "script") (str.to_re "select") (str.to_re "small") (str.to_re "span") (str.to_re "strike") (str.to_re "strong") (str.to_re "style") (str.to_re "sub") (str.to_re "sup") (str.to_re "table") (str.to_re "tbody") (str.to_re "td") (str.to_re "textarea") (str.to_re "tfoot") (str.to_re "th") (str.to_re "thead") (str.to_re "title") (str.to_re "tr") (str.to_re "tt") (str.to_re "u") (str.to_re "ul") (str.to_re "var") (str.to_re "xmp")) (re.* (re.union (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")))) (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">"))) (str.to_re ">\u{a}")))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}"))))
; /\.php\?catalogp\=\d{2}$/U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?catalogp=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "ver") (re.range "0" "9") (str.to_re "Robert") (re.range "0" "9") (str.to_re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\u{a}")))))
(check-sat)
