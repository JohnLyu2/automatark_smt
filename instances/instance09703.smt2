(declare-const X String)
; ((EQD[^']*')(RFF[^']*'){0,9}(EQN[^']*')?(TMD[^']*'){0,9}(DTM[^']*'){0,9}(LOC[^']*'){0,9}(MEA[^']*'){0,9}(DIM[^']*'){0,9}(TMP[^']*'){0,9}(RNG[^']*'){0,9}(SEL[^']*'){0,9}(FTX[^']*'){0,9}(DGS[^']*'){0,9}(EQA[^']*'){0,9}(NAD[^']*')?)((TDT[^']*')(RFF[^']*'){0,9}(LOC[^']*'){0,9}(DTM[^']*'){0,9})?
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "TDT") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "\u{a}") ((_ re.loop 0 9) (re.++ (str.to_re "RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "EQN") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DTM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "MEA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DIM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "TMP") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "RNG") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "SEL") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "FTX") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DGS") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "EQA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "NAD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "EQD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")))))
; /filename=[^\n]*\x2eets/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ets/i\u{a}"))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}"))))
; ^([_a-zA-Z0-9-]+\.[_a-zA-Z0-9-]*)\@((([a-zA-Z0-9-]{2,255})\.(ad|ae|af|ag|ai|al|am|an|ao|aq|ar|as|at|au|aw|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bv|bw|by|bz|ca|cc|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cx|cy|cz|de|di|dk|dm|do|dz|ec|ee|eg|eh|er|es|et|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|in|io|iq|ir|is|it|jo|jm|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|an|nc|ne|nf|ng|ni|nl|no|np|nr|nt|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|pt|pw|py|qa|re|ro|ru|rw|sa|sb|sc|sd|se|sq|sh|si|sj|sk|sl|sm|sn|so|sr|st|su|sv|sy|sz|tc|td|tf|tg|th|tj|tk|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|yu|za|zm|zr|zw|arpa|arts|biz|com|edu|firm|gov|info|int|mil|nato|net|nom|org|rec|store|web))|((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])))$
(assert (str.in_re X (re.++ (str.to_re "@") (re.union (re.++ ((_ re.loop 2 255) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".") (re.union (str.to_re "ad") (str.to_re "ae") (str.to_re "af") (str.to_re "ag") (str.to_re "ai") (str.to_re "al") (str.to_re "am") (str.to_re "an") (str.to_re "ao") (str.to_re "aq") (str.to_re "ar") (str.to_re "as") (str.to_re "at") (str.to_re "au") (str.to_re "aw") (str.to_re "az") (str.to_re "ba") (str.to_re "bb") (str.to_re "bd") (str.to_re "be") (str.to_re "bf") (str.to_re "bg") (str.to_re "bh") (str.to_re "bi") (str.to_re "bj") (str.to_re "bm") (str.to_re "bn") (str.to_re "bo") (str.to_re "br") (str.to_re "bs") (str.to_re "bt") (str.to_re "bv") (str.to_re "bw") (str.to_re "by") (str.to_re "bz") (str.to_re "ca") (str.to_re "cc") (str.to_re "cf") (str.to_re "cg") (str.to_re "ch") (str.to_re "ci") (str.to_re "ck") (str.to_re "cl") (str.to_re "cm") (str.to_re "cn") (str.to_re "co") (str.to_re "cr") (str.to_re "cu") (str.to_re "cv") (str.to_re "cx") (str.to_re "cy") (str.to_re "cz") (str.to_re "de") (str.to_re "di") (str.to_re "dk") (str.to_re "dm") (str.to_re "do") (str.to_re "dz") (str.to_re "ec") (str.to_re "ee") (str.to_re "eg") (str.to_re "eh") (str.to_re "er") (str.to_re "es") (str.to_re "et") (str.to_re "fi") (str.to_re "fj") (str.to_re "fk") (str.to_re "fm") (str.to_re "fo") (str.to_re "fr") (str.to_re "ga") (str.to_re "gb") (str.to_re "gd") (str.to_re "ge") (str.to_re "gf") (str.to_re "gh") (str.to_re "gi") (str.to_re "gl") (str.to_re "gm") (str.to_re "gn") (str.to_re "gp") (str.to_re "gq") (str.to_re "gr") (str.to_re "gs") (str.to_re "gt") (str.to_re "gu") (str.to_re "gw") (str.to_re "gy") (str.to_re "hk") (str.to_re "hm") (str.to_re "hn") (str.to_re "hr") (str.to_re "ht") (str.to_re "hu") (str.to_re "id") (str.to_re "ie") (str.to_re "il") (str.to_re "in") (str.to_re "io") (str.to_re "iq") (str.to_re "ir") (str.to_re "is") (str.to_re "it") (str.to_re "jo") (str.to_re "jm") (str.to_re "jp") (str.to_re "ke") (str.to_re "kg") (str.to_re "kh") (str.to_re "ki") (str.to_re "km") (str.to_re "kn") (str.to_re "kp") (str.to_re "kr") (str.to_re "kw") (str.to_re "ky") (str.to_re "kz") (str.to_re "la") (str.to_re "lb") (str.to_re "lc") (str.to_re "li") (str.to_re "lk") (str.to_re "lr") (str.to_re "ls") (str.to_re "lt") (str.to_re "lu") (str.to_re "lv") (str.to_re "ly") (str.to_re "ma") (str.to_re "mc") (str.to_re "md") (str.to_re "mg") (str.to_re "mh") (str.to_re "mk") (str.to_re "ml") (str.to_re "mm") (str.to_re "mn") (str.to_re "mo") (str.to_re "mp") (str.to_re "mq") (str.to_re "mr") (str.to_re "ms") (str.to_re "mt") (str.to_re "mu") (str.to_re "mv") (str.to_re "mw") (str.to_re "mx") (str.to_re "my") (str.to_re "mz") (str.to_re "an") (str.to_re "nc") (str.to_re "ne") (str.to_re "nf") (str.to_re "ng") (str.to_re "ni") (str.to_re "nl") (str.to_re "no") (str.to_re "np") (str.to_re "nr") (str.to_re "nt") (str.to_re "nu") (str.to_re "nz") (str.to_re "om") (str.to_re "pa") (str.to_re "pe") (str.to_re "pf") (str.to_re "pg") (str.to_re "ph") (str.to_re "pk") (str.to_re "pl") (str.to_re "pm") (str.to_re "pn") (str.to_re "pr") (str.to_re "pt") (str.to_re "pw") (str.to_re "py") (str.to_re "qa") (str.to_re "re") (str.to_re "ro") (str.to_re "ru") (str.to_re "rw") (str.to_re "sa") (str.to_re "sb") (str.to_re "sc") (str.to_re "sd") (str.to_re "se") (str.to_re "sq") (str.to_re "sh") (str.to_re "si") (str.to_re "sj") (str.to_re "sk") (str.to_re "sl") (str.to_re "sm") (str.to_re "sn") (str.to_re "so") (str.to_re "sr") (str.to_re "st") (str.to_re "su") (str.to_re "sv") (str.to_re "sy") (str.to_re "sz") (str.to_re "tc") (str.to_re "td") (str.to_re "tf") (str.to_re "tg") (str.to_re "th") (str.to_re "tj") (str.to_re "tk") (str.to_re "tm") (str.to_re "tn") (str.to_re "to") (str.to_re "tp") (str.to_re "tr") (str.to_re "tt") (str.to_re "tv") (str.to_re "tw") (str.to_re "tz") (str.to_re "ua") (str.to_re "ug") (str.to_re "uk") (str.to_re "um") (str.to_re "us") (str.to_re "uy") (str.to_re "uz") (str.to_re "va") (str.to_re "vc") (str.to_re "ve") (str.to_re "vg") (str.to_re "vi") (str.to_re "vn") (str.to_re "vu") (str.to_re "wf") (str.to_re "ws") (str.to_re "ye") (str.to_re "yt") (str.to_re "yu") (str.to_re "za") (str.to_re "zm") (str.to_re "zr") (str.to_re "zw") (str.to_re "arpa") (str.to_re "arts") (str.to_re "biz") (str.to_re "com") (str.to_re "edu") (str.to_re "firm") (str.to_re "gov") (str.to_re "info") (str.to_re "int") (str.to_re "mil") (str.to_re "nato") (str.to_re "net") (str.to_re "nom") (str.to_re "org") (str.to_re "rec") (str.to_re "store") (str.to_re "web"))) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9") (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "1" "9") (str.to_re "0")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.range "0" "9")))) (str.to_re "\u{a}") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".") (re.* (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))))))
; ^[a-zA-Z]{1,2}[0-9][0-9A-Za-z]{0,1} {0,1}[0-9][A-Za-z]{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)
