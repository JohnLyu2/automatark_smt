(declare-const X String)
; mywayHost\x3Awww\x2Eeblocs\x2Ecom
(assert (not (str.in_re X (str.to_re "mywayHost:www.eblocs.com\u{1b}\u{a}"))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}"))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.range "0" "9") (str.to_re "<title>Actual") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "SpywareStrike") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\u{a}"))))
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (not (str.in_re X (str.to_re "Subject:KeyloggerSAHHost:Surveillance\u{13}notification\u{13}/download/toolbar/locatorstoolbar\u{a}"))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)

(exit)
