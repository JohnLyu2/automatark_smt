(declare-const X String)
; /^\/\x3f[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "~") (str.to_re "_") (str.to_re "-"))) (str.to_re "/Ui\u{a}")))))
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (str.to_re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (str.in_re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to_re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ^((ucs2|utf8)\_(bin|(general|unicode|roman|slovak|czech|icelandic|(latv|pers)ian|(dan|pol|span|swed|turk)ish|spanish2|(esto|lithua|roma|slove)nian\_ci)))|((mac(ce|roman)|cp(8(5(0|2)|66)|1256)|armscii8|geostd8|ascii|keybcs2|greek|hebrew|koi8(r|u))\_(bin|general\_ci))|((dec8|swe7)\_(bin|swedish\_ci))|((hp8|latin5)\_(bin|english\_ci))|((big5|gb(2312|k))\_(bin|chinese\_ci))|((cp932|eucjpms|(s|u)jis)\_(bin|japanese\_ci))|(euckr\_(bin|korean\_ci))|(tis620\_(bin|thai\_ci))|(latin1\_(bin|(((dan|span|swed)ish|german(1|2))\_ci)|general\_(ci|cs)))|(cp1250\_(bin|czech\_cs|general\_ci))|(latin2\_(bin|czech\_cs|(general|hungarian|croatian)\_ci))|(cp1257\_(bin|(general|lithuanian)\_ci))|(latin7\_(bin|general\_(c(i|s))|estonian\_cs))|(cp1251\_(bin|(general|bulgarian|ukrainian)\_ci|general\_cs))$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "general") (str.to_re "unicode") (str.to_re "roman") (str.to_re "slovak") (str.to_re "czech") (str.to_re "icelandic") (re.++ (re.union (str.to_re "latv") (str.to_re "pers")) (str.to_re "ian")) (re.++ (re.union (str.to_re "dan") (str.to_re "pol") (str.to_re "span") (str.to_re "swed") (str.to_re "turk")) (str.to_re "ish")) (str.to_re "spanish2") (re.++ (re.union (str.to_re "esto") (str.to_re "lithua") (str.to_re "roma") (str.to_re "slove")) (str.to_re "nian_ci"))) (str.to_re "u") (re.union (str.to_re "cs2") (str.to_re "tf8"))) (re.++ (re.union (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "1256"))) (str.to_re "armscii8") (str.to_re "geostd8") (str.to_re "ascii") (str.to_re "keybcs2") (str.to_re "greek") (str.to_re "hebrew") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u")))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "general_ci"))) (re.++ (re.union (str.to_re "dec8") (str.to_re "swe7")) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "swedish_ci"))) (re.++ (re.union (str.to_re "hp8") (str.to_re "latin5")) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "english_ci"))) (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "gb") (re.union (str.to_re "2312") (str.to_re "k")))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "chinese_ci"))) (re.++ (re.union (str.to_re "cp932") (str.to_re "eucjpms") (re.++ (re.union (str.to_re "s") (str.to_re "u")) (str.to_re "jis"))) (str.to_re "_") (re.union (str.to_re "bin") (str.to_re "japanese_ci"))) (re.++ (str.to_re "euckr_") (re.union (str.to_re "bin") (str.to_re "korean_ci"))) (re.++ (str.to_re "tis620_") (re.union (str.to_re "bin") (str.to_re "thai_ci"))) (re.++ (str.to_re "latin1_") (re.union (str.to_re "bin") (re.++ (re.union (re.++ (re.union (str.to_re "dan") (str.to_re "span") (str.to_re "swed")) (str.to_re "ish")) (re.++ (str.to_re "german") (re.union (str.to_re "1") (str.to_re "2")))) (str.to_re "_ci")) (re.++ (str.to_re "general_c") (re.union (str.to_re "i") (str.to_re "s"))))) (re.++ (str.to_re "cp1250_") (re.union (str.to_re "bin") (str.to_re "czech_cs") (str.to_re "general_ci"))) (re.++ (str.to_re "latin2_") (re.union (str.to_re "bin") (str.to_re "czech_cs") (re.++ (re.union (str.to_re "general") (str.to_re "hungarian") (str.to_re "croatian")) (str.to_re "_ci")))) (re.++ (str.to_re "cp1257_") (re.union (str.to_re "bin") (re.++ (re.union (str.to_re "general") (str.to_re "lithuanian")) (str.to_re "_ci")))) (re.++ (str.to_re "latin7_") (re.union (str.to_re "bin") (re.++ (str.to_re "general_c") (re.union (str.to_re "i") (str.to_re "s"))) (str.to_re "estonian_cs"))) (re.++ (str.to_re "\u{a}cp1251_") (re.union (str.to_re "bin") (re.++ (re.union (str.to_re "general") (str.to_re "bulgarian") (str.to_re "ukrainian")) (str.to_re "_ci")) (str.to_re "general_cs")))))))
; ^([3]{1}[0-1]{1}|[1-1]?[0-9]{1})-([0-1]?[0-2]{1}|[0-9]{1})-[0-9]{4}([\s]+([2]{1}[0-3]{1}|[0-1]?[0-9]{1})[:]{1}([0-5]?[0-9]{1})([:]{1}([0-5]?[0-9]{1}))?)?$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (str.to_re "3")) ((_ re.loop 1 1) (re.range "0" "1"))) (re.++ (re.opt (re.range "1" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "-") (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "2"))) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "3"))) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")))) ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
